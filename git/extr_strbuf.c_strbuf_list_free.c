
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int free (struct strbuf**) ;
 int strbuf_release (struct strbuf*) ;

void strbuf_list_free(struct strbuf **sbs)
{
 struct strbuf **s = sbs;

 while (*s) {
  strbuf_release(*s);
  free(*s++);
 }
 free(sbs);
}
