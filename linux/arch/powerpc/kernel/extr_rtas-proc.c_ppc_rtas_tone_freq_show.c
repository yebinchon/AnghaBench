
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int rtas_tone_frequency ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ppc_rtas_tone_freq_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%lu\n", rtas_tone_frequency);
 return 0;
}
