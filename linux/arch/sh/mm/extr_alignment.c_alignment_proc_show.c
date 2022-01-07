
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int se_dword ;
 int se_half ;
 int se_kernmode_warn ;
 int se_multi ;
 int se_sys ;
 int se_user ;
 size_t se_usermode ;
 char** se_usermode_action ;
 int se_word ;
 int seq_printf (struct seq_file*,char*,int,...) ;

__attribute__((used)) static int alignment_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "User:\t\t%lu\n", se_user);
 seq_printf(m, "System:\t\t%lu\n", se_sys);
 seq_printf(m, "Half:\t\t%lu\n", se_half);
 seq_printf(m, "Word:\t\t%lu\n", se_word);
 seq_printf(m, "DWord:\t\t%lu\n", se_dword);
 seq_printf(m, "Multi:\t\t%lu\n", se_multi);
 seq_printf(m, "User faults:\t%i (%s)\n", se_usermode,
   se_usermode_action[se_usermode]);
 seq_printf(m, "Kernel faults:\t%i (fixup%s)\n", se_kernmode_warn,
   se_kernmode_warn ? "+warn" : "");
 return 0;
}
