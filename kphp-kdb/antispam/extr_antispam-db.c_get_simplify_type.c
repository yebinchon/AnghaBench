
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flags_t ;


 int FLAGS_SIMPLIFY_FULL ;
 int FLAGS_SIMPLIFY_PARTIAL ;
 int SIMPLIFY_TYPE_FULL ;
 int SIMPLIFY_TYPE_NONE ;
 int SIMPLIFY_TYPE_PARTIAL ;

__attribute__((used)) static int get_simplify_type ( flags_t flags ) {
  if (flags & FLAGS_SIMPLIFY_FULL)
    return SIMPLIFY_TYPE_FULL;
  if (flags & FLAGS_SIMPLIFY_PARTIAL)
    return SIMPLIFY_TYPE_PARTIAL;
  return SIMPLIFY_TYPE_NONE;
}
