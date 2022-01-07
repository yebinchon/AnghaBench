
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_cmd_status ;
 int lockdep_assert_held (int *) ;
 int rdtgroup_mutex ;
 int seq_buf_puts (int *,char const*) ;

void rdt_last_cmd_puts(const char *s)
{
 lockdep_assert_held(&rdtgroup_mutex);
 seq_buf_puts(&last_cmd_status, s);
}
