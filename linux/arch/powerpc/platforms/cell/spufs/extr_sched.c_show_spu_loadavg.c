
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int idr; } ;


 int FIXED_1 ;
 int LOAD_FRAC (int) ;
 int LOAD_INT (int) ;
 int atomic_read (int *) ;
 int count_active_contexts () ;
 int current ;
 scalar_t__ idr_get_cursor (int *) ;
 int nr_spu_contexts ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 int* spu_avenrun ;
 TYPE_1__* task_active_pid_ns (int ) ;

__attribute__((used)) static int show_spu_loadavg(struct seq_file *s, void *private)
{
 int a, b, c;

 a = spu_avenrun[0] + (FIXED_1/200);
 b = spu_avenrun[1] + (FIXED_1/200);
 c = spu_avenrun[2] + (FIXED_1/200);






 seq_printf(s, "%d.%02d %d.%02d %d.%02d %ld/%d %d\n",
  LOAD_INT(a), LOAD_FRAC(a),
  LOAD_INT(b), LOAD_FRAC(b),
  LOAD_INT(c), LOAD_FRAC(c),
  count_active_contexts(),
  atomic_read(&nr_spu_contexts),
  idr_get_cursor(&task_active_pid_ns(current)->idr) - 1);
 return 0;
}
