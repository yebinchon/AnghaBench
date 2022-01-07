
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_level {int dummy; } ;
struct seq_file {int dummy; } ;


 scalar_t__ cpum_cf_avail () ;
 scalar_t__ cpum_sf_avail () ;
 int sl_print_counter (struct seq_file*) ;
 int sl_print_sampling (struct seq_file*) ;

__attribute__((used)) static void service_level_perf_print(struct seq_file *m,
         struct service_level *sl)
{
 if (cpum_cf_avail())
  sl_print_counter(m);
 if (cpum_sf_avail())
  sl_print_sampling(m);
}
