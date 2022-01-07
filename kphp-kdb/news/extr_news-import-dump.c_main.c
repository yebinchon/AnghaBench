
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPLIT_PARAM_OWNER ;
 int SPLIT_PARAM_OWNERXPLACE ;
 int atoi (int ) ;
 int getopt (int,char**,char*) ;
 int import_dump () ;
 int import_dump2 () ;
 int import_file ;
 int log_split_mod ;
 char* name_pattern ;
 int optarg ;
 int optind ;
 char* progname ;
 int split_param ;
 int usage () ;
 int verbosity ;

int main (int argc, char *argv[]) {
  progname = argv[0];
  int i;
  int mode = 0;
  while ((i = getopt (argc, argv, "m:vn:oxz")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'm':
      log_split_mod = atoi (optarg);
      break;
    case 'n':
      import_file = optarg;
      break;
    case 'o':
      split_param = SPLIT_PARAM_OWNER;
      break;
    case 'x':
      split_param = SPLIT_PARAM_OWNERXPLACE;
      break;
    case 'z':
      mode = 1;
      break;
    case 'h':
    default:
      usage ();
      return 2;
    }
  }
  if (argc != optind + 1 || !import_file || !log_split_mod) {
    usage();
    return 2;
  }
  name_pattern = argv[optind];
  if (mode == 0) {
    import_dump ();
  } else {
    import_dump2 ();
  }
  return 0;
}
