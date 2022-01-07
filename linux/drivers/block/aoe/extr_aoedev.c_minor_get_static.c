
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int AOE_PARTITIONS ;
 int N_DEVS ;
 int pr_err (char*,char*,int,...) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,int) ;
 int spin_unlock_irqrestore (int *,int) ;
 scalar_t__ test_bit (int,int ) ;
 int used_minors ;
 int used_minors_lock ;

__attribute__((used)) static int
minor_get_static(ulong *sysminor, ulong aoemaj, int aoemin)
{
 ulong flags;
 ulong n;
 int error = 0;
 enum {


  NPERSHELF = 16,
 };

 if (aoemin >= NPERSHELF) {
  pr_err("aoe: %s %d slots per shelf\n",
   "static minor device numbers support only",
   NPERSHELF);
  error = -1;
  goto out;
 }

 n = aoemaj * NPERSHELF + aoemin;
 if (n >= N_DEVS) {
  pr_err("aoe: %s with e%ld.%d\n",
   "cannot use static minor device numbers",
   aoemaj, aoemin);
  error = -1;
  goto out;
 }

 spin_lock_irqsave(&used_minors_lock, flags);
 if (test_bit(n, used_minors)) {
  pr_err("aoe: %s %lu\n",
   "existing device already has static minor number",
   n);
  error = -1;
 } else
  set_bit(n, used_minors);
 spin_unlock_irqrestore(&used_minors_lock, flags);
 *sysminor = n * AOE_PARTITIONS;
out:
 return error;
}
