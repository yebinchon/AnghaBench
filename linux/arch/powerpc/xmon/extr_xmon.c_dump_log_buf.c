
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmsg_dumper {int active; } ;
typedef int buf ;


 int __delay (int) ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 scalar_t__ kmsg_dump_get_line_nolock (struct kmsg_dumper*,int,unsigned char*,int,size_t*) ;
 int kmsg_dump_rewind_nolock (struct kmsg_dumper*) ;
 int printf (char*,...) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 int xmon_end_pagination () ;
 int xmon_start_pagination () ;

__attribute__((used)) static void
dump_log_buf(void)
{
 struct kmsg_dumper dumper = { .active = 1 };
 unsigned char buf[128];
 size_t len;

 if (setjmp(bus_error_jmp) != 0) {
  printf("Error dumping printk buffer!\n");
  return;
 }

 catch_memory_errors = 1;
 sync();

 kmsg_dump_rewind_nolock(&dumper);
 xmon_start_pagination();
 while (kmsg_dump_get_line_nolock(&dumper, 0, buf, sizeof(buf), &len)) {
  buf[len] = '\0';
  printf("%s", buf);
 }
 xmon_end_pagination();

 sync();

 __delay(200);
 catch_memory_errors = 0;
}
