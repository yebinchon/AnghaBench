
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ino_bucket {int dummy; } ;


 int __pa (struct ino_bucket*) ;
 unsigned int bucket_get_irq (int ) ;
 struct ino_bucket* ivector_table ;
 unsigned long sun4v_devino_to_sysino (int ,unsigned int) ;

__attribute__((used)) static unsigned int sysino_exists(u32 devhandle, unsigned int devino)
{
 unsigned long sysino = sun4v_devino_to_sysino(devhandle, devino);
 struct ino_bucket *bucket;
 unsigned int irq;

 bucket = &ivector_table[sysino];
 irq = bucket_get_irq(__pa(bucket));

 return irq;
}
