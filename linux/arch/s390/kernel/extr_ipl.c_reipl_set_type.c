
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipl_type { ____Placeholder_ipl_type } ipl_type ;


 int EINVAL ;



 int reipl_block_actual ;
 int reipl_block_ccw ;
 int reipl_block_fcp ;
 int reipl_block_nss ;
 int reipl_capabilities ;
 int reipl_type ;

__attribute__((used)) static int reipl_set_type(enum ipl_type type)
{
 if (!(reipl_capabilities & type))
  return -EINVAL;

 switch(type) {
 case 130:
  reipl_block_actual = reipl_block_ccw;
  break;
 case 129:
  reipl_block_actual = reipl_block_fcp;
  break;
 case 128:
  reipl_block_actual = reipl_block_nss;
  break;
 default:
  break;
 }
 reipl_type = type;
 return 0;
}
