
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hook_expand_t ;


 void* arg_address ;
 void* arg_extra ;
 size_t arg_new_usize ;
 size_t arg_old_usize ;
 uintptr_t arg_result_raw ;
 int arg_type ;
 int be_reentrant () ;
 int call_count ;
 int set_args_raw (uintptr_t*,int) ;

__attribute__((used)) static void
test_expand_hook(void *extra, hook_expand_t type, void *address,
    size_t old_usize, size_t new_usize, uintptr_t result_raw,
    uintptr_t args_raw[4]) {
 call_count++;
 arg_extra = extra;
 arg_type = (int)type;
 arg_address = address;
 arg_old_usize = old_usize;
 arg_new_usize = new_usize;
 arg_result_raw = result_raw;
 set_args_raw(args_raw, 4);
 be_reentrant();
}
