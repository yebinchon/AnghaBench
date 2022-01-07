
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int drive; int pi; int name; } ;


 int IDE_BUSY ;
 int IDE_DRQ ;
 scalar_t__ pcd_wait (struct pcd_unit*,int,int,char*,char*) ;
 int pi_connect (int ) ;
 int pi_disconnect (int ) ;
 int pi_write_block (int ,char*,int) ;
 int printk (char*,int ,char*) ;
 int read_reg (struct pcd_unit*,int) ;
 int write_reg (struct pcd_unit*,int,int) ;

__attribute__((used)) static int pcd_command(struct pcd_unit *cd, char *cmd, int dlen, char *fun)
{
 pi_connect(cd->pi);

 write_reg(cd, 6, 0xa0 + 0x10 * cd->drive);

 if (pcd_wait(cd, IDE_BUSY | IDE_DRQ, 0, fun, "before command")) {
  pi_disconnect(cd->pi);
  return -1;
 }

 write_reg(cd, 4, dlen % 256);
 write_reg(cd, 5, dlen / 256);
 write_reg(cd, 7, 0xa0);

 if (pcd_wait(cd, IDE_BUSY, IDE_DRQ, fun, "command DRQ")) {
  pi_disconnect(cd->pi);
  return -1;
 }

 if (read_reg(cd, 2) != 1) {
  printk("%s: %s: command phase error\n", cd->name, fun);
  pi_disconnect(cd->pi);
  return -1;
 }

 pi_write_block(cd->pi, cmd, 12);

 return 0;
}
