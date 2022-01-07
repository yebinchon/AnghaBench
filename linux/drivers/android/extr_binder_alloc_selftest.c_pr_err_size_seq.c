
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFER_NUM ;
 int pr_cont (char*,...) ;
 int pr_err (char*) ;

__attribute__((used)) static void pr_err_size_seq(size_t *sizes, int *seq)
{
 int i;

 pr_err("alloc sizes: ");
 for (i = 0; i < BUFFER_NUM; i++)
  pr_cont("[%zu]", sizes[i]);
 pr_cont("\n");
 pr_err("free seq: ");
 for (i = 0; i < BUFFER_NUM; i++)
  pr_cont("[%d]", seq[i]);
 pr_cont("\n");
}
