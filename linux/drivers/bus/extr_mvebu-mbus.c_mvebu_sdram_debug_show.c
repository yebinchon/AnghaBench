
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct mvebu_mbus_state {TYPE_1__* soc; } ;
struct TYPE_2__ {int (* show_cpu_target ) (struct mvebu_mbus_state*,struct seq_file*,void*) ;} ;


 struct mvebu_mbus_state mbus_state ;
 int stub1 (struct mvebu_mbus_state*,struct seq_file*,void*) ;

__attribute__((used)) static int mvebu_sdram_debug_show(struct seq_file *seq, void *v)
{
 struct mvebu_mbus_state *mbus = &mbus_state;
 return mbus->soc->show_cpu_target(mbus, seq, v);
}
