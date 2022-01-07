
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {long wptr; long rptr; scalar_t__ buffer_size; } ;


 int assert (int) ;

__attribute__((used)) static inline long get_buffer_bytes (struct repl_server_status *S) {
  long cur_buffer_bytes = S->wptr - S->rptr;
  if (cur_buffer_bytes < 0) {
    cur_buffer_bytes += S->buffer_size;
    assert (cur_buffer_bytes > 0);
  }
  return cur_buffer_bytes;
}
