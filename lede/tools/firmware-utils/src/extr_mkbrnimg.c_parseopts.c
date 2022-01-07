
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* crc32_poly ;
 int getopt (int,char**,char*) ;
 void* magic ;
 char* optarg ;
 scalar_t__ optind ;
 char* output_file ;
 char* signature ;
 void* strtoul (char*,char**,int ) ;
 int usage (char*) ;

__attribute__((used)) static void parseopts(int *argc, char ***argv)
{
 char *endptr;
 int res;

 while ((res = getopt(*argc, *argv, "o:m:s:p:")) != -1) {
  switch (res) {
  default:
   usage("Unknown option");
   break;
  case 'o':
   output_file = optarg;
   break;
  case 'm':
   magic = strtoul(optarg, &endptr, 0);
   if (endptr == optarg || *endptr != 0)
    usage("magic must be a decimal or hexadecimal 32-bit value");
   break;
  case 's':
   signature = optarg;
   break;
  case 'p':
   crc32_poly = strtoul(optarg, &endptr, 0);
   if (endptr == optarg || *endptr != 0)
    usage("'crc32 poly' must be a decimal or hexadecimal 32-bit value");
   break;
  }
 }
 *argc -= optind;
 *argv += optind;
}
