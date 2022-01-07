
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {char type; int size; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int active ;
 int exit (int) ;
 int filename ;
 int fprintf (int ,char*) ;
 scalar_t__ gen_ptable (int,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ heads ;
 int kb_align ;
 int optarg ;
 scalar_t__ optind ;
 TYPE_1__* parts ;
 scalar_t__ sectors ;
 int stderr ;
 int strtoul (int ,int *,int) ;
 int to_kbytes (int ) ;
 int usage (char*) ;
 int verbose ;

int main (int argc, char **argv)
{
 char type = 0x83;
 int ch;
 int part = 0;
 uint32_t signature = 0x5452574F;

 while ((ch = getopt(argc, argv, "h:s:p:a:t:o:vl:S:")) != -1) {
  switch (ch) {
  case 'o':
   filename = optarg;
   break;
  case 'v':
   verbose++;
   break;
  case 'h':
   heads = (int)strtoul(optarg, ((void*)0), 0);
   break;
  case 's':
   sectors = (int)strtoul(optarg, ((void*)0), 0);
   break;
  case 'p':
   if (part > 3) {
    fprintf(stderr, "Too many partitions\n");
    exit(EXIT_FAILURE);
   }
   parts[part].size = to_kbytes(optarg);
   parts[part++].type = type;
   break;
  case 't':
   type = (char)strtoul(optarg, ((void*)0), 16);
   break;
  case 'a':
   active = (int)strtoul(optarg, ((void*)0), 0);
   if ((active < 0) || (active > 4))
    active = 0;
   break;
  case 'l':
   kb_align = (int)strtoul(optarg, ((void*)0), 0) * 2;
   break;
  case 'S':
   signature = strtoul(optarg, ((void*)0), 0);
   break;
  case '?':
  default:
   usage(argv[0]);
  }
 }
 argc -= optind;
 if (argc || (heads <= 0) || (sectors <= 0) || !filename)
  usage(argv[0]);

 return gen_ptable(signature, part) ? EXIT_FAILURE : EXIT_SUCCESS;
}
