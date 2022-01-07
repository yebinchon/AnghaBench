
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,char const*) ;

__attribute__((used)) static void bitvector_process(struct seq_file *m, u64 vector)
{
 int i,j;
 static const char *units[]={ "", "K", "M", "G", "T" };

 for (i=0, j=0; i < 64; i++ , j=i/10) {
  if (vector & 0x1)
   seq_printf(m, "%d%s ", 1 << (i-j*10), units[j]);
  vector >>= 1;
 }
}
