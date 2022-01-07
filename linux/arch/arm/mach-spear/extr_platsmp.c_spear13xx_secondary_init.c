
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_lock ;
 int spear_write_pen_release (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spear13xx_secondary_init(unsigned int cpu)
{




 spear_write_pen_release(-1);




 spin_lock(&boot_lock);
 spin_unlock(&boot_lock);
}
