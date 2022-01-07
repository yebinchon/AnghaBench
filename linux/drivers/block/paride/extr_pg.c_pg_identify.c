
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {size_t drive; int name; } ;


 int ATAPI_IDENTIFY ;
 scalar_t__ PG_TMO ;
 scalar_t__ jiffies ;
 int pg_command (struct pg*,char*,int,scalar_t__) ;
 int pg_completion (struct pg*,char*,scalar_t__) ;
 int printk (char*,int ,char*,char*,char*) ;
 int xs (char*,char*,int) ;

__attribute__((used)) static int pg_identify(struct pg *dev, int log)
{
 int s;
 char *ms[2] = { "master", "slave" };
 char mf[10], id[18];
 char id_cmd[12] = { ATAPI_IDENTIFY, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0 };
 char buf[36];

 s = pg_command(dev, id_cmd, 36, jiffies + PG_TMO);
 if (s)
  return -1;
 s = pg_completion(dev, buf, jiffies + PG_TMO);
 if (s)
  return -1;

 if (log) {
  xs(buf + 8, mf, 8);
  xs(buf + 16, id, 16);
  printk("%s: %s %s, %s\n", dev->name, mf, id, ms[dev->drive]);
 }

 return 0;
}
