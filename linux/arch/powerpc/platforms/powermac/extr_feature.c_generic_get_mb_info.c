
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_2__ {long model_id; long board_flags; char* model_name; } ;


 long EINVAL ;



 TYPE_1__ pmac_mb ;

__attribute__((used)) static long generic_get_mb_info(struct device_node *node, long param, long value)
{
 switch(param) {
  case 129:
   return pmac_mb.model_id;
  case 130:
   return pmac_mb.board_flags;
  case 128:

   *((const char **)value) = pmac_mb.model_name;
   return 0;
 }
 return -EINVAL;
}
