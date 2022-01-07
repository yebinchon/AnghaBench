
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct json_writer {struct strbuf json; scalar_t__ pretty; TYPE_1__ open_stack; } ;


 struct strbuf STRBUF_INIT ;
 int increase_indent (struct strbuf*,struct json_writer const*,int) ;
 int kill_indent (struct strbuf*,struct json_writer const*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void append_sub_jw(struct json_writer *jw,
     const struct json_writer *value)
{
 if (jw->pretty && jw->open_stack.len && value->pretty) {
  struct strbuf sb = STRBUF_INIT;
  increase_indent(&sb, value, jw->open_stack.len * 2);
  strbuf_addbuf(&jw->json, &sb);
  strbuf_release(&sb);
  return;
 }
 if (!jw->pretty && value->pretty) {
  struct strbuf sb = STRBUF_INIT;
  kill_indent(&sb, value);
  strbuf_addbuf(&jw->json, &sb);
  strbuf_release(&sb);
  return;
 }

 strbuf_addbuf(&jw->json, &value->json);
}
