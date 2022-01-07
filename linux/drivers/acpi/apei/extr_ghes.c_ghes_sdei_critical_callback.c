
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct ghes {int dummy; } ;
typedef int DEFINE_RAW_SPINLOCK ;


 int FIX_APEI_GHES_SDEI_CRITICAL ;
 int __ghes_sdei_callback (struct ghes*,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int ghes_sdei_critical_callback(u32 event_num, struct pt_regs *regs,
           void *arg)
{
 static DEFINE_RAW_SPINLOCK(ghes_notify_lock_sdei_critical);
 struct ghes *ghes = arg;
 int err;

 raw_spin_lock(&ghes_notify_lock_sdei_critical);
 err = __ghes_sdei_callback(ghes, FIX_APEI_GHES_SDEI_CRITICAL);
 raw_spin_unlock(&ghes_notify_lock_sdei_critical);

 return err;
}
