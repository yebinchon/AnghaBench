
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clar_summary {int fp; } ;


 int fprintf (int ,char*) ;

int clar_summary_testsuites(struct clar_summary *summary)
{
 return fprintf(summary->fp, "<testsuites>\n");
}
