
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {char* name; } ;


 int GFP_KERNEL ;
 char* kzalloc (int,int ) ;
 char** partnames ;
 int sprintf (char*,char*,char*,...) ;

void gen_partname(unsigned int type,
    unsigned int *typenumeration,
    struct mtd_partition *part)
{
 char *s = kzalloc(sizeof(char) * 8, GFP_KERNEL);

 (typenumeration[type])++;
 if (typenumeration[type] == 1)
  sprintf(s, "%s", partnames[type]);
 else
  sprintf(s, "%s%d", partnames[type], typenumeration[type]);

 part->name = s;
}
