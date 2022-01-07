
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getopt (int,char**,char*) ;
 char* input_file ;
 int loadaddr ;
 char* optarg ;
 scalar_t__ optind ;
 char* output_file ;
 int strtoul (char*,char**,int ) ;
 int usage (char*) ;

__attribute__((used)) static void parseopts(int *argc, char ***argv)
{
 char *endptr;
 int res;

 while ((res = getopt(*argc, *argv, "a:i:o:")) != -1) {
  switch (res) {
  default:
   usage("Unknown option");
   break;
  case 'a':
   loadaddr = strtoul(optarg, &endptr, 0);
   if (endptr == optarg || *endptr != 0)
    usage("loadaddress must be a decimal or hexadecimal 32-bit value");
   break;
  case 'i':
   input_file = optarg;
   break;
  case 'o':
   output_file = optarg;
   break;
  }
 }
 *argc -= optind;
 *argv += optind;
}
