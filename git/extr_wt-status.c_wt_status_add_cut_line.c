
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fputs (int ,int *) ;
 int strbuf_release (struct strbuf*) ;
 int wt_status_append_cut_line (struct strbuf*) ;

void wt_status_add_cut_line(FILE *fp)
{
 struct strbuf buf = STRBUF_INIT;

 wt_status_append_cut_line(&buf);
 fputs(buf.buf, fp);
 strbuf_release(&buf);
}
