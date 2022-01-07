
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;


 int be64_to_cpu (int) ;
 int cpu_to_be64 (int) ;
 int opal_con_id ;
 int opal_console_write (int ,int*,unsigned char*) ;
 scalar_t__ opal_console_write_buffer_space (int ,int*) ;
 int opal_poll_events (int *) ;

__attribute__((used)) static void opal_con_putc(unsigned char c)
{
 int64_t rc;
 uint64_t olen, len;

 do {
  rc = opal_console_write_buffer_space(opal_con_id, &olen);
  len = be64_to_cpu(olen);
  if (rc)
   return;
  opal_poll_events(((void*)0));
 } while (len < 1);


 olen = cpu_to_be64(1);
 opal_console_write(opal_con_id, &olen, &c);
}
