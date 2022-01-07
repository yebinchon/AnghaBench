
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_bool ;
typedef enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;


 int FALSE ;
 int MRB_TT_CLASS ;
 int MRB_TT_MODULE ;
 int TRUE ;

__attribute__((used)) static inline mrb_bool
namespace_p(enum mrb_vtype tt)
{
  return tt == MRB_TT_CLASS || tt == MRB_TT_MODULE ? TRUE : FALSE;
}
