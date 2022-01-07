
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clar_summary {int fp; } ;


 int fprintf (int ,char*,char const*,char const*,char const*) ;

int clar_summary_failure(struct clar_summary *summary,
    const char *type, const char *message, const char *desc)
{
 return fprintf(summary->fp,
     "\t\t\t<failure type=\"%s\"><![CDATA[%s\n%s]]></failure>\n",
     type, message, desc);
}
