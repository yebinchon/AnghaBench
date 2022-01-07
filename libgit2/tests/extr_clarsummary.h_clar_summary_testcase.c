
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clar_summary {int fp; } ;


 int fprintf (int ,char*,char const*,char const*,double) ;

int clar_summary_testcase(struct clar_summary *summary,
    const char *name, const char *classname, double elapsed)
{
 return fprintf(summary->fp,
     "\t\t<testcase name=\"%s\" classname=\"%s\" time=\"%.2f\">\n",
  name, classname, elapsed);
}
