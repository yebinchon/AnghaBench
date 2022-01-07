
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optstr ;


 int DEFAULT_BAUD ;
 scalar_t__ cmdline_find_option (char*,char*,int) ;
 int early_serial_init (int,int) ;
 int probe_baud (int) ;
 int simple_strtoull (char*,char**,int ) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void parse_console_uart8250(void)
{
 char optstr[64], *options;
 int baud = DEFAULT_BAUD;
 int port = 0;





 if (cmdline_find_option("console", optstr, sizeof(optstr)) <= 0)
  return;

 options = optstr;

 if (!strncmp(options, "uart8250,io,", 12))
  port = simple_strtoull(options + 12, &options, 0);
 else if (!strncmp(options, "uart,io,", 8))
  port = simple_strtoull(options + 8, &options, 0);
 else
  return;

 if (options && (options[0] == ','))
  baud = simple_strtoull(options + 1, &options, 0);
 else
  baud = probe_baud(port);

 if (port)
  early_serial_init(port, baud);
}
