
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_args_raw ;
 int assert_d_eq (int,int ,char*) ;
 int memcmp (uintptr_t*,int ,int) ;

__attribute__((used)) static void
assert_args_raw(uintptr_t *args_raw_expected, int nargs) {
 int cmp = memcmp(args_raw_expected, arg_args_raw,
     sizeof(uintptr_t) * nargs);
 assert_d_eq(cmp, 0, "Raw args mismatch");
}
