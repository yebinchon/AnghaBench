
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void usage(int status)
{
 fprintf(stderr, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stderr,
  "\n"
  "Options:\n"
  "  -i <file>       config partition file <file>\n"
  "  -m              print mac address\n"
  "  -e <file>       save eeprom calibration data image to the file <file>\n"
  "  -o <offset>     set start offset to <ofset>\n"
  "  -p              print config data\n"
  "  -v              verbose\n"
  "  -h              show this screen\n");

 exit(status);
}
