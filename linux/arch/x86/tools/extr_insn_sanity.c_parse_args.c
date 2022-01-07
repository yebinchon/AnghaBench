
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 int init_random_seed () ;
 scalar_t__ input_file ;
 scalar_t__ iter_end ;
 scalar_t__ iter_start ;
 char* optarg ;
 char* prog ;
 unsigned int seed ;
 int srand (unsigned int) ;
 scalar_t__ stdin ;
 int strcmp (char*,char*) ;
 scalar_t__ strtoul (char*,char**,int ) ;
 int usage (char*) ;
 int verbose ;
 int x86_64 ;

__attribute__((used)) static void parse_args(int argc, char **argv)
{
 int c;
 char *tmp = ((void*)0);
 int set_seed = 0;

 prog = argv[0];
 while ((c = getopt(argc, argv, "ynvs:m:i:")) != -1) {
  switch (c) {
  case 'y':
   x86_64 = 1;
   break;
  case 'n':
   x86_64 = 0;
   break;
  case 'v':
   verbose++;
   break;
  case 'i':
   if (strcmp("-", optarg) == 0)
    input_file = stdin;
   else
    input_file = fopen(optarg, "r");
   if (!input_file)
    usage("Failed to open input file");
   break;
  case 's':
   seed = (unsigned int)strtoul(optarg, &tmp, 0);
   if (*tmp == ',') {
    optarg = tmp + 1;
    iter_start = strtoul(optarg, &tmp, 0);
   }
   if (*tmp != '\0' || tmp == optarg)
    usage("Failed to parse seed");
   set_seed = 1;
   break;
  case 'm':
   iter_end = strtoul(optarg, &tmp, 0);
   if (*tmp != '\0' || tmp == optarg)
    usage("Failed to parse max_iter");
   break;
  default:
   usage(((void*)0));
  }
 }


 if (iter_end < iter_start)
  usage("Max iteration number must be bigger than iter-num");

 if (set_seed && input_file)
  usage("Don't use input file (-i) with random seed (-s)");


 if (!input_file) {
  if (!set_seed)
   init_random_seed();
  srand(seed);
 }
}
