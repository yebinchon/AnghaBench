
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_process_t ;
typedef int int64_t ;


 int ASSERT (int) ;

__attribute__((used)) static void fail_cb(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  ASSERT(0 && "fail_cb called");
}
