
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int HCALL_STAT_ARRAY_SIZE ;

__attribute__((used)) static void *hc_start(struct seq_file *m, loff_t *pos)
{
 if ((int)*pos < (HCALL_STAT_ARRAY_SIZE-1))
  return (void *)(unsigned long)(*pos + 1);

 return ((void*)0);
}
