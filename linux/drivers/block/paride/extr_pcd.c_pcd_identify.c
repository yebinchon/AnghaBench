
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {scalar_t__ drive; int name; } ;


 int memcpy (char*,int*,int) ;
 int pcd_atapi (struct pcd_unit*,char*,int,int*,char*) ;
 int pcd_bufblk ;
 int* pcd_buffer ;
 int printk (char*,int ,char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static int pcd_identify(struct pcd_unit *cd, char *id)
{
 int k, s;
 char id_cmd[12] = { 0x12, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0 };

 pcd_bufblk = -1;

 s = pcd_atapi(cd, id_cmd, 36, pcd_buffer, "identify");

 if (s)
  return -1;
 if ((pcd_buffer[0] & 0x1f) != 5) {
  if (verbose)
   printk("%s: %s is not a CD-ROM\n",
          cd->name, cd->drive ? "Slave" : "Master");
  return -1;
 }
 memcpy(id, pcd_buffer + 16, 16);
 id[16] = 0;
 k = 16;
 while ((k >= 0) && (id[k] <= 0x20)) {
  id[k] = 0;
  k--;
 }

 printk("%s: %s: %s\n", cd->name, cd->drive ? "Slave" : "Master", id);

 return 0;
}
