
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int MVEBU_MBUS_NO_REMAP ;
 int mvebu_mbus_add_window_remap_by_id (unsigned int,unsigned int,int ,size_t,int ) ;

int mvebu_mbus_add_window_by_id(unsigned int target, unsigned int attribute,
    phys_addr_t base, size_t size)
{
 return mvebu_mbus_add_window_remap_by_id(target, attribute, base,
       size, MVEBU_MBUS_NO_REMAP);
}
