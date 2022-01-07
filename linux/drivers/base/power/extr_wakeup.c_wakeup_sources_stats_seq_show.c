
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;
struct seq_file {int dummy; } ;


 int print_wakeup_source_stats (struct seq_file*,struct wakeup_source*) ;

__attribute__((used)) static int wakeup_sources_stats_seq_show(struct seq_file *m, void *v)
{
 struct wakeup_source *ws = v;

 print_wakeup_source_stats(m, ws);

 return 0;
}
