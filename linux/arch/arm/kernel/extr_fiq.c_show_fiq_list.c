
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int name; } ;


 TYPE_1__* current_fiq ;
 TYPE_1__ default_owner ;
 int seq_printf (struct seq_file*,char*,int,char*,int ) ;

int show_fiq_list(struct seq_file *p, int prec)
{
 if (current_fiq != &default_owner)
  seq_printf(p, "%*s:              %s\n", prec, "FIQ",
   current_fiq->name);

 return 0;
}
