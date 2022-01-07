
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_args_raw ;
 int memcpy (int ,uintptr_t*,int) ;

__attribute__((used)) static void
set_args_raw(uintptr_t *args_raw, int nargs) {
 memcpy(arg_args_raw, args_raw, sizeof(uintptr_t) * nargs);
}
