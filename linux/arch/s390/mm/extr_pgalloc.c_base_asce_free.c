
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _ASCE_ORIGIN ;
 unsigned long _ASCE_TYPE_MASK ;




 int _PAGE_SIZE ;
 int _REGION1_SIZE ;
 int _REGION2_SIZE ;
 int _REGION3_SIZE ;
 int base_crst_free (unsigned long) ;
 int base_region1_walk (unsigned long,int ,int ,int ) ;
 int base_region2_walk (unsigned long,int ,int ,int ) ;
 int base_region3_walk (unsigned long,int ,int ,int ) ;
 int base_segment_walk (unsigned long,int ,int ,int ) ;

void base_asce_free(unsigned long asce)
{
 unsigned long table = asce & _ASCE_ORIGIN;

 if (!asce)
  return;
 switch (asce & _ASCE_TYPE_MASK) {
 case 128:
  base_segment_walk(table, 0, _REGION3_SIZE, 0);
  break;
 case 129:
  base_region3_walk(table, 0, _REGION2_SIZE, 0);
  break;
 case 130:
  base_region2_walk(table, 0, _REGION1_SIZE, 0);
  break;
 case 131:
  base_region1_walk(table, 0, -_PAGE_SIZE, 0);
  break;
 }
 base_crst_free(table);
}
