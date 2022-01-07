
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hook_dalloc_t ;


 void* arg_address ;
 void* arg_extra ;
 int arg_type ;
 int be_reentrant () ;
 int call_count ;
 int set_args_raw (uintptr_t*,int) ;

__attribute__((used)) static void
test_dalloc_hook(void *extra, hook_dalloc_t type, void *address,
    uintptr_t args_raw[3]) {
 call_count++;
 arg_extra = extra;
 arg_type = (int)type;
 arg_address = address;
 set_args_raw(args_raw, 3);
 be_reentrant();
}
