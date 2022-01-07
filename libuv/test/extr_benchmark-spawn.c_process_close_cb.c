
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int maybe_spawn () ;
 int process_open ;

__attribute__((used)) static void process_close_cb(uv_handle_t* handle) {
  ASSERT(process_open == 1);
  process_open = 0;
  maybe_spawn();
}
