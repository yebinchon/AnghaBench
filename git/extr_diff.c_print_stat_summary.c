
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int * file; } ;
typedef int o ;
typedef int FILE ;


 int memset (struct diff_options*,int ,int) ;
 int print_stat_summary_inserts_deletes (struct diff_options*,int,int,int) ;

void print_stat_summary(FILE *fp, int files,
   int insertions, int deletions)
{
 struct diff_options o;
 memset(&o, 0, sizeof(o));
 o.file = fp;

 print_stat_summary_inserts_deletes(&o, files, insertions, deletions);
}
