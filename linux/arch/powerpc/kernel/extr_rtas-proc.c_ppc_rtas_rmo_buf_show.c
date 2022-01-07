
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int RTAS_RMOBUF_MAX ;
 int rtas_rmo_buf ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int ppc_rtas_rmo_buf_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%016lx %x\n", rtas_rmo_buf, RTAS_RMOBUF_MAX);
 return 0;
}
