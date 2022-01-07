
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_4__ {scalar_t__ req_cpu; size_t func_id; } ;
typedef TYPE_1__ pal_func_cpu_u_t ;
struct TYPE_5__ {int (* proc_read ) (struct seq_file*) ;} ;


 scalar_t__ get_cpu () ;
 TYPE_3__* palinfo_entries ;
 int palinfo_handle_smp (struct seq_file*,TYPE_1__*) ;
 int put_cpu () ;
 int stub1 (struct seq_file*) ;

__attribute__((used)) static int proc_palinfo_show(struct seq_file *m, void *v)
{
 pal_func_cpu_u_t *f = (pal_func_cpu_u_t *)&m->private;





 if (f->req_cpu == get_cpu())
  (*palinfo_entries[f->func_id].proc_read)(m);
 else
  palinfo_handle_smp(m, f);

 put_cpu();
 return 0;
}
