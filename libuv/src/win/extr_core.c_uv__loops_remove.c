
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int UV__LOOPS_CHUNK_SIZE ;
 int uv__free (int **) ;
 int ** uv__loops ;
 int uv__loops_capacity ;
 int uv__loops_lock ;
 int uv__loops_size ;
 int ** uv__realloc (int **,int) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static void uv__loops_remove(uv_loop_t* loop) {
  int loop_index;
  int smaller_capacity;
  uv_loop_t** new_loops;

  uv_mutex_lock(&uv__loops_lock);

  for (loop_index = 0; loop_index < uv__loops_size; ++loop_index) {
    if (uv__loops[loop_index] == loop)
      break;
  }

  if (loop_index == uv__loops_size)
    goto loop_removed;

  uv__loops[loop_index] = uv__loops[uv__loops_size - 1];
  uv__loops[uv__loops_size - 1] = ((void*)0);
  --uv__loops_size;

  if (uv__loops_size == 0) {
    uv__loops_capacity = 0;
    uv__free(uv__loops);
    uv__loops = ((void*)0);
    goto loop_removed;
  }


  if (uv__loops_capacity < 4 * UV__LOOPS_CHUNK_SIZE)
    goto loop_removed;


  smaller_capacity = uv__loops_capacity / 2;
  if (uv__loops_size >= smaller_capacity)
    goto loop_removed;
  new_loops = uv__realloc(uv__loops, sizeof(uv_loop_t*) * smaller_capacity);
  if (!new_loops)
    goto loop_removed;
  uv__loops = new_loops;
  uv__loops_capacity = smaller_capacity;

loop_removed:
  uv_mutex_unlock(&uv__loops_lock);
}
