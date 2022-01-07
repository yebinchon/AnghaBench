
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int pv_monid; } ;


 TYPE_1__* romvec ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void sun3_get_hardware_list(struct seq_file *m)
{
 seq_printf(m, "PROM Revision:\t%s\n", romvec->pv_monid);
}
