
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_lock ;
 int prima2_pen_release ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sirfsoc_secondary_init(unsigned int cpu)
{




 prima2_pen_release = -1;
 smp_wmb();




 spin_lock(&boot_lock);
 spin_unlock(&boot_lock);
}
