
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; char* buf; } ;
struct json_writer {TYPE_1__ json; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void kill_indent(struct strbuf *sb,
   const struct json_writer *jw)
{
 int k;
 int eat_it = 0;

 strbuf_reset(sb);
 for (k = 0; k < jw->json.len; k++) {
  char ch = jw->json.buf[k];
  if (eat_it && ch == ' ')
   continue;
  if (ch == '\n') {
   eat_it = 1;
   continue;
  }
  eat_it = 0;
  strbuf_addch(sb, ch);
 }
}
