
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int assert (char const) ;
 int strbuf_addch (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int tolower (char) ;

__attribute__((used)) static void append_msg_id(struct strbuf *sb, const char *msg_id)
{
 for (;;) {
  char c = *(msg_id)++;

  if (!c)
   break;
  if (c != '_')
   strbuf_addch(sb, tolower(c));
  else {
   assert(*msg_id);
   strbuf_addch(sb, *(msg_id)++);
  }
 }

 strbuf_addstr(sb, ": ");
}
