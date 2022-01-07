
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static void show_graph(struct strbuf *out, char ch, int cnt,
         const char *set, const char *reset)
{
 if (cnt <= 0)
  return;
 strbuf_addstr(out, set);
 strbuf_addchars(out, ch, cnt);
 strbuf_addstr(out, reset);
}
