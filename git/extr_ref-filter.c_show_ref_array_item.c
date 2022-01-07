
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct ref_format {int dummy; } ;
struct ref_array_item {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 scalar_t__ format_ref_array_item (struct ref_array_item*,struct ref_format const*,struct strbuf*,struct strbuf*) ;
 int fwrite (int ,int,int ,int ) ;
 int putchar (char) ;
 int stdout ;
 int strbuf_release (struct strbuf*) ;

void show_ref_array_item(struct ref_array_item *info,
    const struct ref_format *format)
{
 struct strbuf final_buf = STRBUF_INIT;
 struct strbuf error_buf = STRBUF_INIT;

 if (format_ref_array_item(info, format, &final_buf, &error_buf))
  die("%s", error_buf.buf);
 fwrite(final_buf.buf, 1, final_buf.len, stdout);
 strbuf_release(&error_buf);
 strbuf_release(&final_buf);
 putchar('\n');
}
