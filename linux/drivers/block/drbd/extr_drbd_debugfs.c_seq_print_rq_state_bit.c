
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int __seq_print_rq_state_bit (struct seq_file*,int,char*,char const*,int *) ;

__attribute__((used)) static void seq_print_rq_state_bit(struct seq_file *m,
 bool is_set, char *sep, const char *set_name)
{
 __seq_print_rq_state_bit(m, is_set, sep, set_name, ((void*)0));
}
