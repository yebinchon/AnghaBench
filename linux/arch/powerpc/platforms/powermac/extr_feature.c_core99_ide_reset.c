
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int KEYLARGO_FCR1 ;
 int KL1_EIDE0_RESET_N ;
 int KL1_EIDE1_RESET_N ;
 int KL1_UIDE_RESET_N ;
 int macio_unknown ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,int) ;

__attribute__((used)) static long
core99_ide_reset(struct device_node *node, long param, long value)
{
 switch(param) {
     case 0:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_EIDE0_RESET_N, !value);
     case 1:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_EIDE1_RESET_N, !value);
     case 2:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_UIDE_RESET_N, !value);
     default:
  return -ENODEV;
 }
}
