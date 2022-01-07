
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_BR_UNKNOWN ;
 int X86_BR_TYPE_MAP_MAX ;
 int __ffs (int) ;
 int* branch_map ;

__attribute__((used)) static int
common_branch_type(int type)
{
 int i;

 type >>= 2;

 if (type) {
  i = __ffs(type);
  if (i < X86_BR_TYPE_MAP_MAX)
   return branch_map[i];
 }

 return PERF_BR_UNKNOWN;
}
