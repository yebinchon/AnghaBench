
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arg ;


 int DEFAULT_BAUD ;
 int DEFAULT_SERIAL_PORT ;
 scalar_t__ cmdline_find_option (char*,char*,int) ;
 int early_serial_init (int,int) ;
 int simple_strtoull (char*,char**,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void parse_earlyprintk(void)
{
 int baud = DEFAULT_BAUD;
 char arg[32];
 int pos = 0;
 int port = 0;

 if (cmdline_find_option("earlyprintk", arg, sizeof(arg)) > 0) {
  char *e;

  if (!strncmp(arg, "serial", 6)) {
   port = DEFAULT_SERIAL_PORT;
   pos += 6;
  }

  if (arg[pos] == ',')
   pos++;







  if (pos == 7 && !strncmp(arg + pos, "0x", 2)) {
   port = simple_strtoull(arg + pos, &e, 16);
   if (port == 0 || arg + pos == e)
    port = DEFAULT_SERIAL_PORT;
   else
    pos = e - arg;
  } else if (!strncmp(arg + pos, "ttyS", 4)) {
   static const int bases[] = { 0x3f8, 0x2f8 };
   int idx = 0;


   pos += 4;

   if (arg[pos++] == '1')
    idx = 1;

   port = bases[idx];
  }

  if (arg[pos] == ',')
   pos++;

  baud = simple_strtoull(arg + pos, &e, 0);
  if (baud == 0 || arg + pos == e)
   baud = DEFAULT_BAUD;
 }

 if (port)
  early_serial_init(port, baud);
}
