
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hook_alloc_t ;


 void* arg_extra ;
 void* arg_result ;
 uintptr_t arg_result_raw ;
 int arg_type ;
 int be_reentrant () ;
 int call_count ;
 int set_args_raw (uintptr_t*,int) ;

__attribute__((used)) static void
test_alloc_hook(void *extra, hook_alloc_t type, void *result,
    uintptr_t result_raw, uintptr_t args_raw[3]) {
 call_count++;
 arg_extra = extra;
 arg_type = (int)type;
 arg_result = result;
 arg_result_raw = result_raw;
 set_args_raw(args_raw, 3);
 be_reentrant();
}
