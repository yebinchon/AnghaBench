
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct json_writer {int json; TYPE_1__ open_stack; } ;


 int strbuf_addstr (int *,char*) ;

__attribute__((used)) static void indent_pretty(struct json_writer *jw)
{
 int k;

 for (k = 0; k < jw->open_stack.len; k++)
  strbuf_addstr(&jw->json, "  ");
}
