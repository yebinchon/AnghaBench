
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmsg_dumper {int dummy; } ;
typedef enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;


 int KMSG_DUMP_PANIC ;
 int opal_flush_console (int ) ;

__attribute__((used)) static void kmsg_dump_opal_console_flush(struct kmsg_dumper *dumper,
         enum kmsg_dump_reason reason)
{




 if (reason != KMSG_DUMP_PANIC)
  return;

 opal_flush_console(0);
}
