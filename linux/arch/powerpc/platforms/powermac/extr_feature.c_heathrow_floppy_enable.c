
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int HEATHROW_FCR ;
 int HRW_BAY_FLOPPY_ENABLE ;
 int HRW_SWIM_ENABLE ;
 int macio_unknown ;
 long simple_feature_tweak (struct device_node*,int ,int ,int,long) ;

__attribute__((used)) static long heathrow_floppy_enable(struct device_node *node, long param,
       long value)
{
 return simple_feature_tweak(node, macio_unknown,
  HEATHROW_FCR,
  HRW_SWIM_ENABLE|HRW_BAY_FLOPPY_ENABLE,
  value);
}
