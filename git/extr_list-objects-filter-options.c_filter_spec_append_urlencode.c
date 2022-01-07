
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct list_objects_filter_options {int filter_spec; } ;


 struct strbuf STRBUF_INIT ;
 int allow_unencoded ;
 int strbuf_addstr_urlencode (struct strbuf*,char const*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int string_list_append (int *,int ) ;
 int trace_printf (char*,int ) ;

__attribute__((used)) static void filter_spec_append_urlencode(
 struct list_objects_filter_options *filter, const char *raw)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_addstr_urlencode(&buf, raw, allow_unencoded);
 trace_printf("Add to combine filter-spec: %s\n", buf.buf);
 string_list_append(&filter->filter_spec, strbuf_detach(&buf, ((void*)0)));
}
