
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int name; } ;


 int ARRAY_SIZE (int *) ;
 int * pd_errs ;
 int printk (char*,...) ;

__attribute__((used)) static void pd_print_error(struct pd_unit *disk, char *msg, int status)
{
 int i;

 printk("%s: %s: status = 0x%x =", disk->name, msg, status);
 for (i = 0; i < ARRAY_SIZE(pd_errs); i++)
  if (status & (1 << i))
   printk(" %s", pd_errs[i]);
 printk("\n");
}
