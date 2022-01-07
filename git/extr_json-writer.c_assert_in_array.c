
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* buf; } ;
struct json_writer {TYPE_1__ open_stack; } ;


 int BUG (char*) ;

__attribute__((used)) static void assert_in_array(const struct json_writer *jw)
{
 if (!jw->open_stack.len)
  BUG("json-writer: array: missing jw_array_begin()");
 if (jw->open_stack.buf[jw->open_stack.len - 1] != '[')
  BUG("json-writer: array: not in array");
}
