
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int addr; } ;


 int PAGE_SHIFT ;
 int cec_add_elem (int) ;
 scalar_t__ mce_is_correctable (struct mce*) ;
 scalar_t__ mce_is_memory_error (struct mce*) ;
 scalar_t__ mce_usable_address (struct mce*) ;

__attribute__((used)) static bool cec_add_mce(struct mce *m)
{
 if (!m)
  return 0;


 if (mce_is_memory_error(m) &&
     mce_is_correctable(m) &&
     mce_usable_address(m))
  if (!cec_add_elem(m->addr >> PAGE_SHIFT))
   return 1;

 return 0;
}
