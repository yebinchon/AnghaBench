
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int BUG_ON (int) ;
 int MAX_PHBS ;
 int find_first_zero_bit (int ,int) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int*) ;
 int of_property_read_u64 (struct device_node*,char*,int*) ;
 int phb_bitmap ;
 int set_bit (int,int ) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int get_phb_number(struct device_node *dn)
{
 int ret, phb_id = -1;
 u32 prop_32;
 u64 prop;






 ret = of_property_read_u64(dn, "ibm,opal-phbid", &prop);
 if (ret) {
  ret = of_property_read_u32_index(dn, "reg", 1, &prop_32);
  prop = prop_32;
 }

 if (!ret)
  phb_id = (int)(prop & (MAX_PHBS - 1));


 if ((phb_id >= 0) && !test_and_set_bit(phb_id, phb_bitmap))
  return phb_id;





 phb_id = find_first_zero_bit(phb_bitmap, MAX_PHBS);
 BUG_ON(phb_id >= MAX_PHBS);
 set_bit(phb_id, phb_bitmap);

 return phb_id;
}
