
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* _ (char*) ;
 int cut_line ;
 int strbuf_add_commented_lines (struct strbuf*,char const*,int ) ;
 int strbuf_commented_addf (struct strbuf*,char*,int ) ;
 int strlen (char const*) ;

void wt_status_append_cut_line(struct strbuf *buf)
{
 const char *explanation = _("Do not modify or remove the line above.\nEverything below it will be ignored.");

 strbuf_commented_addf(buf, "%s", cut_line);
 strbuf_add_commented_lines(buf, explanation, strlen(explanation));
}
