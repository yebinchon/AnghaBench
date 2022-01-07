
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct json_writer {TYPE_1__ open_stack; } ;



int jw_is_terminated(const struct json_writer *jw)
{
 return !jw->open_stack.len;
}
