
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int docs; int idx_docs; int pos_capacity; unsigned long long** Pos; int mutex_insert; } ;
typedef TYPE_1__ volume_t ;


 unsigned long long STORAGE_SECRET_MASK ;
 int assert (int) ;
 unsigned long long* calloc (int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 unsigned long long** realloc (unsigned long long**,int) ;
 int tot_docs ;

__attribute__((used)) static int doc_insert (volume_t *V, unsigned long long secret, unsigned long long file_pos) {
  const unsigned long long pos = file_pos | (secret & STORAGE_SECRET_MASK);
  tot_docs++;
  pthread_mutex_lock (&V->mutex_insert);
  int local_id = ++(V->docs);
  int i = local_id - V->idx_docs - 1;
  assert (i >= 0);
  int k = i & 2047;
  i >>= 11;
  if (!k) {
    unsigned long long *a = calloc (2048, 8);
    assert (a != ((void*)0));
    a[0] = pos;
    if (i == V->pos_capacity) {
      int new_capacity = 1 + (V->pos_capacity << 1);
      unsigned long long **b = realloc (V->Pos, new_capacity * sizeof (V->Pos[0]));
      assert (b != ((void*)0));
      V->Pos = b;
      V->pos_capacity = new_capacity;
    }
    assert (i < V->pos_capacity);
    V->Pos[i] = a;
  } else {
    assert (i < V->pos_capacity);
    V->Pos[i][k] = pos;
  }
  pthread_mutex_unlock (&V->mutex_insert);
  return local_id;
}
