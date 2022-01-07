
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int ERROR_OUTOFMEMORY ;
 size_t UV__LOOPS_CHUNK_SIZE ;
 int ** uv__loops ;
 size_t uv__loops_capacity ;
 int uv__loops_lock ;
 size_t uv__loops_size ;
 int ** uv__realloc (int **,int) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static int uv__loops_add(uv_loop_t* loop) {
  uv_loop_t** new_loops;
  int new_capacity, i;

  uv_mutex_lock(&uv__loops_lock);

  if (uv__loops_size == uv__loops_capacity) {
    new_capacity = uv__loops_capacity + UV__LOOPS_CHUNK_SIZE;
    new_loops = uv__realloc(uv__loops, sizeof(uv_loop_t*) * new_capacity);
    if (!new_loops)
      goto failed_loops_realloc;
    uv__loops = new_loops;
    for (i = uv__loops_capacity; i < new_capacity; ++i)
      uv__loops[i] = ((void*)0);
    uv__loops_capacity = new_capacity;
  }
  uv__loops[uv__loops_size] = loop;
  ++uv__loops_size;

  uv_mutex_unlock(&uv__loops_lock);
  return 0;

failed_loops_realloc:
  uv_mutex_unlock(&uv__loops_lock);
  return ERROR_OUTOFMEMORY;
}
