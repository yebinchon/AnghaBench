
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mbus_state {int dummy; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 struct mvebu_mbus_state mbus_state ;
 int mvebu_mbus_alloc_window (struct mvebu_mbus_state*,int ,size_t,int ,unsigned int,unsigned int) ;
 int mvebu_mbus_window_conflicts (struct mvebu_mbus_state*,int ,size_t,unsigned int,unsigned int) ;
 int pr_err (char*,unsigned int,unsigned int) ;

int mvebu_mbus_add_window_remap_by_id(unsigned int target,
          unsigned int attribute,
          phys_addr_t base, size_t size,
          phys_addr_t remap)
{
 struct mvebu_mbus_state *s = &mbus_state;

 if (!mvebu_mbus_window_conflicts(s, base, size, target, attribute)) {
  pr_err("cannot add window '%x:%x', conflicts with another window\n",
         target, attribute);
  return -EINVAL;
 }

 return mvebu_mbus_alloc_window(s, base, size, remap, target, attribute);
}
