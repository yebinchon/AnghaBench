
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;
struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static int string_list_join_lines_helper(struct string_list_item *item,
      void *cb_data)
{
 struct strbuf *buf = cb_data;
 strbuf_addstr(buf, item->string);
 strbuf_addch(buf, '\n');
 return 0;
}
