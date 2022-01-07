
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int file_exist (char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* input_file ;
 int * name_filter ;
 void* optarg ;
 int print_all_key_names ;
 int show_all ;
 int stderr ;
 int strtoul (void*,int *,int ) ;
 int swap_bytes ;
 int tffs_size ;
 int usage (int ) ;

__attribute__((used)) static void parse_options(int argc, char *argv[])
{
 while (1)
 {
  int c;

  c = getopt(argc, argv, "abhi:ln:s:");
  if (c == -1)
   break;

  switch (c) {
   case 'a':
    show_all = 1;
    name_filter = ((void*)0);
    print_all_key_names = 0;
    break;
   case 'b':
    swap_bytes = 1;
    break;
   case 'h':
    usage(EXIT_SUCCESS);
    break;
   case 'i':
    input_file = optarg;
    break;
   case 'l':
    print_all_key_names = 1;
    show_all = 0;
    name_filter = ((void*)0);
    break;
   case 'n':
    name_filter = optarg;
    show_all = 0;
    print_all_key_names = 0;
    break;
   case 's':
    tffs_size = strtoul(optarg, ((void*)0), 0);
    break;
   default:
    usage(EXIT_FAILURE);
    break;
  }
 }

 if (!input_file) {
  fprintf(stderr, "ERROR: No input file (-i <file>) given!\n");
  exit(EXIT_FAILURE);
 }

 if (!file_exist(input_file)) {
  fprintf(stderr, "ERROR: %s does not exist\n", input_file);
  exit(EXIT_FAILURE);
 }

 if (!show_all && !name_filter && !print_all_key_names) {
  fprintf(stderr,
   "ERROR: either -l, -a or -n <key name> is required!\n");
  exit(EXIT_FAILURE);
 }
}
