
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* buf; } ;
struct json_writer {TYPE_1__ open_stack; } ;


 int BUG (char*,char const*) ;

__attribute__((used)) static void assert_in_object(const struct json_writer *jw, const char *key)
{
 if (!jw->open_stack.len)
  BUG("json-writer: object: missing jw_object_begin(): '%s'", key);
 if (jw->open_stack.buf[jw->open_stack.len - 1] != '{')
  BUG("json-writer: object: not in object: '%s'", key);
}
