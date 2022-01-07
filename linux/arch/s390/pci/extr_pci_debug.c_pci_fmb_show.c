
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char*,int ) ;

__attribute__((used)) static void pci_fmb_show(struct seq_file *m, char *name[], int length,
    u64 *data)
{
 int i;

 for (i = 0; i < length; i++, data++)
  seq_printf(m, "%26s:\t%llu\n", name[i], *data);
}
