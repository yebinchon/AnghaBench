
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int status; int name; } ;


 int PG_SPIN ;
 int PG_SPIN_DEL ;
 int STAT_ERR ;
 int jiffies ;
 int pg_sleep (int) ;
 int printk (char*,int ,char*,int,int,int,char*) ;
 int read_reg (struct pg*,int) ;
 int status_reg (struct pg*) ;
 int time_after_eq (int ,unsigned long) ;
 scalar_t__ time_before (int ,unsigned long) ;
 int udelay (int ) ;
 int verbose ;

__attribute__((used)) static int pg_wait(struct pg *dev, int go, int stop, unsigned long tmo, char *msg)
{
 int j, r, e, s, p, to;

 dev->status = 0;

 j = 0;
 while ((((r = status_reg(dev)) & go) || (stop && (!(r & stop))))
        && time_before(jiffies, tmo)) {
  if (j++ < PG_SPIN)
   udelay(PG_SPIN_DEL);
  else
   pg_sleep(1);
 }

 to = time_after_eq(jiffies, tmo);

 if ((r & (STAT_ERR & stop)) || to) {
  s = read_reg(dev, 7);
  e = read_reg(dev, 1);
  p = read_reg(dev, 2);
  if (verbose > 1)
   printk("%s: %s: stat=0x%x err=0x%x phase=%d%s\n",
          dev->name, msg, s, e, p, to ? " timeout" : "");
  if (to)
   e |= 0x100;
  dev->status = (e >> 4) & 0xff;
  return -1;
 }
 return 0;
}
