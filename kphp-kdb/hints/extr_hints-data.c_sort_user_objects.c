
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int MAX_CNT ;
 int NOAIO ;
 int assert (int) ;
 int bad_requests ;
 int check_rating_num (int) ;
 int check_user_id (int) ;
 int * conv_user_id (int) ;
 int fix_down (int *,int*,int,int) ;
 int get_local_user_id (int) ;
 int get_random (int,int,int*,int *,int*) ;
 int* heap ;
 int * load_user_metafile (int *,int,int ) ;
 scalar_t__ object_cmp (int *,int,int,int) ;
 int* objects_to_sort ;
 int user_get_object_local_id_type_id (int *,long long) ;
 long long user_get_object_type_id (int *,int) ;
 int user_get_object_weight (int *,int,int) ;
 int * weight ;

int sort_user_objects (int user_id, int object_cnt, long long *obj, int max_cnt, int num, int need_rand) {
  if (!check_user_id (user_id) || !check_rating_num (num)) {
    bad_requests++;
    return -1;
  }

  int local_user_id = get_local_user_id (user_id);
  if (local_user_id == 0) {
    return 0;
  }
  assert (local_user_id > 0);

  user *u = conv_user_id (user_id);
  assert (u != ((void*)0));

  if (load_user_metafile (u, local_user_id, NOAIO) == ((void*)0)) {
    return -2;
  }

  assert (obj != ((void*)0));

  int i, j, k, t;

  if (object_cnt > MAX_CNT) {
    object_cnt = MAX_CNT;
  }

  if (max_cnt > MAX_CNT) {
    max_cnt = MAX_CNT;
  }

  if (max_cnt < 0) {
    max_cnt = 0;
  }

  int n = 0;
  for (i = 0; i < object_cnt; i++) {
    int lid = user_get_object_local_id_type_id (u, obj[i]);
    if (lid) {
      objects_to_sort[n++] = lid;
    }
  }

  int heap_size = 0;
  if (max_cnt) {
    for (i = 0; i < n; i++) {
      if (need_rand) {
        heap[++heap_size] = objects_to_sort[i];
      } else {
        if (heap_size < max_cnt) {
          heap[++heap_size] = objects_to_sort[i];
          j = heap_size;
          while (j > 1 && object_cmp (u, heap[j], heap[k = j / 2], num) < 0) {
            t = heap[j], heap[j] = heap[k], heap[k] = t;
            j = k;
          }
        } else if (object_cmp (u, heap[1], objects_to_sort[i], num) < 0) {
          heap[1] = objects_to_sort[i];
          fix_down (u, heap, heap_size, num);
        }
      }
    }
  }

  if (need_rand) {
    for (i = 1; i <= heap_size; i++) {
      weight[i - 1] = user_get_object_weight (u, heap[i], num);
    }
    n = get_random (max_cnt, heap_size, heap + 1, weight, objects_to_sort);
  } else {
    n = heap_size;
    while (heap_size) {
      objects_to_sort[heap_size - 1] = heap[1];
      heap[1] = heap[heap_size--];
      fix_down (u, heap, heap_size, num);
    }
  }

  for (i = 0; i < n; i++) {
    obj[i] = user_get_object_type_id (u, objects_to_sort[i]);
  }

  return n;
}
