
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct parse {int dummy; } ;


 int atoi (char*) ;
 int dynamic_data_buffer_size ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int init_dyn_data () ;
 char* optarg ;
 int optind ;
 int output_expressions ;
 int schema_version ;
 int set_debug_handlers () ;
 int stderr ;
 struct parse* tl_init_parse_file (char*) ;
 int tl_parse (struct tree*) ;
 struct tree* tl_parse_lex (struct parse*) ;
 int tl_print_parse_error () ;
 int usage () ;
 scalar_t__ verbosity ;
 int vkext_write (char*) ;

int main (int argc, char **argv) {
  int i;
  char *expr_filename = ((void*)0);
  char *vkext_file = 0;
  set_debug_handlers ();
  while ((i = getopt (argc, argv, "Eho:ve:w:")) != -1) {
    switch (i) {
    case 'E':
      output_expressions++;
      break;
    case 'o':
      expr_filename = optarg;
      break;
    case 'h':
      usage ();
      return 2;
    case 'e':
      vkext_file = optarg;
      break;
    case 'w':
      schema_version = atoi (optarg);
      break;
    case 'v':
      verbosity++;
      break;
    }
  }

  dynamic_data_buffer_size = (1 << 30);

  if (argc != optind + 1) {
    usage ();
  }
  init_dyn_data ();

  struct parse *P = tl_init_parse_file (argv[optind]);
  if (!P) {
    return 0;
  }
  struct tree *T;
  if (!(T = tl_parse_lex (P))) {
    fprintf (stderr, "Error in parse:\n");
    tl_print_parse_error ();
    return 0;
  } else {
    if (verbosity) {
      fprintf (stderr, "Parse ok\n");
    }
    if (!tl_parse (T)) {
      if (verbosity) {
        fprintf (stderr, "Fail\n");
      }
      return 1;
    } else {
      if (verbosity) {
        fprintf (stderr, "Ok\n");
      }
    }
  }
  if (vkext_file) {
    vkext_write (vkext_file);
  }
  return 0;
}
