
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int pkt_seq_show (struct seq_file*,void*) ;

__attribute__((used)) static int pkt_debugfs_seq_show(struct seq_file *m, void *p)
{
 return pkt_seq_show(m, p);
}
