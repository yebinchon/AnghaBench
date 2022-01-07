
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int close_lines (int ,int ) ;
 int serial_lines ;
 int ssl_init_done ;

__attribute__((used)) static void ssl_exit(void)
{
 if (!ssl_init_done)
  return;
 close_lines(serial_lines, ARRAY_SIZE(serial_lines));
}
