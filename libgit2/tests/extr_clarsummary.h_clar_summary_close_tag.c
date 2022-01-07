
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clar_summary {int fp; } ;


 int fprintf (int ,char*,char const*,char const*) ;

int clar_summary_close_tag(
    struct clar_summary *summary, const char *tag, int indent)
{
 const char *indt;

 if (indent == 0) indt = "";
 else if (indent == 1) indt = "\t";
 else indt = "\t\t";

 return fprintf(summary->fp, "%s</%s>\n", indt, tag);
}
