
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
  "  -i <file>       inspect given firmware file <file>\n"
  "  -f              set family member id (hexval prefixed with 0x)\n"
  "  -F <file>       read image and convert it to FACTORY\n"
  "  -k <file>       read kernel image from the file <file>\n"
  "  -r <file>       read rootfs image from the file <file>\n"
  "  -o <file>       write output to the file <file>\n"
  "  -s <size>       set firmware partition size\n"
  "  -m <version>    set rom id to <version> (12-bit string val: \"DLK*********\")\n"
  "  -h              show this screen\n");

 exit(status);
}
