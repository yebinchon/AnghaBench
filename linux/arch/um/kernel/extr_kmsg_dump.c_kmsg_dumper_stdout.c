
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmsg_dumper {int dummy; } ;
typedef int line ;
typedef enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;


 int * console_drivers ;
 int console_trylock () ;
 int console_unlock () ;
 scalar_t__ kmsg_dump_get_line (struct kmsg_dumper*,int,char*,int,size_t*) ;
 int printf (char*,...) ;

__attribute__((used)) static void kmsg_dumper_stdout(struct kmsg_dumper *dumper,
    enum kmsg_dump_reason reason)
{
 static char line[1024];

 size_t len = 0;
 bool con_available = 0;


 if (!console_trylock())
  return;

 if (console_drivers != ((void*)0))
  con_available = 1;

 console_unlock();

 if (con_available == 1)
  return;

 printf("kmsg_dump:\n");
 while (kmsg_dump_get_line(dumper, 1, line, sizeof(line), &len)) {
  line[len] = '\0';
  printf("%s", line);
 }
}
