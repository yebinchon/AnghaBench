
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int dummy; } ;


 int mdelay (int) ;
 int pcd_command (struct pcd_unit*,char*,int,char*) ;
 int pcd_completion (struct pcd_unit*,char*,char*) ;
 int pcd_req_sense (struct pcd_unit*,char*) ;

__attribute__((used)) static int pcd_atapi(struct pcd_unit *cd, char *cmd, int dlen, char *buf, char *fun)
{
 int r;

 r = pcd_command(cd, cmd, dlen, fun);
 mdelay(1);
 if (!r)
  r = pcd_completion(cd, buf, fun);
 if (r)
  pcd_req_sense(cd, fun);

 return r;
}
