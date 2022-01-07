
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_bool ;


 int FALSE ;



 int TRUE ;
 int mrb_type (int ) ;

__attribute__((used)) static mrb_bool
class_ptr_p(mrb_value obj)
{
  switch (mrb_type(obj)) {
  case 130:
  case 128:
  case 129:
    return TRUE;
  default:
    return FALSE;
  }
}
