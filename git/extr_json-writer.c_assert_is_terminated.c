
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct json_writer {TYPE_2__ json; TYPE_1__ open_stack; } ;


 int BUG (char*,int ) ;

__attribute__((used)) static void assert_is_terminated(const struct json_writer *jw)
{
 if (jw->open_stack.len)
  BUG("json-writer: object: missing jw_end(): '%s'",
      jw->json.buf);
}
