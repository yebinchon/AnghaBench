
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;


 int DRIVE (struct pt_unit*) ;
 int STAT_ERR ;
 int STAT_SEEK ;
 int pi_connect (struct pi_adapter*) ;
 int pi_disconnect (struct pi_adapter*) ;
 int printk (char*,int ,char*,...) ;
 int pt_req_sense (struct pt_unit*,int ) ;
 int pt_sleep (int) ;
 int read_reg (struct pi_adapter*,int) ;
 int write_reg (struct pi_adapter*,int,int ) ;

__attribute__((used)) static int pt_poll_dsc(struct pt_unit *tape, int pause, int tmo, char *msg)
{
 struct pi_adapter *pi = tape->pi;
 int k, e, s;

 k = 0;
 e = 0;
 s = 0;
 while (k < tmo) {
  pt_sleep(pause);
  k++;
  pi_connect(pi);
  write_reg(pi, 6, DRIVE(tape));
  s = read_reg(pi, 7);
  e = read_reg(pi, 1);
  pi_disconnect(pi);
  if (s & (STAT_ERR | STAT_SEEK))
   break;
 }
 if ((k >= tmo) || (s & STAT_ERR)) {
  if (k >= tmo)
   printk("%s: %s DSC timeout\n", tape->name, msg);
  else
   printk("%s: %s stat=0x%x err=0x%x\n", tape->name, msg, s,
          e);
  pt_req_sense(tape, 0);
  return 0;
 }
 return 1;
}
