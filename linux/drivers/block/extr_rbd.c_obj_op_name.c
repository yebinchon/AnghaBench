
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum obj_operation_type { ____Placeholder_obj_operation_type } obj_operation_type ;







__attribute__((used)) static char* obj_op_name(enum obj_operation_type op_type)
{
 switch (op_type) {
 case 130:
  return "read";
 case 129:
  return "write";
 case 131:
  return "discard";
 case 128:
  return "zeroout";
 default:
  return "???";
 }
}
