
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** GP ;
 int MAX_GROUP_PATHS ;
 int aes_load_pwd_file (int *) ;
 int assert (int) ;
 scalar_t__ change_user (char*) ;
 int dump_rows ;
 int exit (int) ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (void*,char*) ;
 int getopt (int,char**,char*) ;
 int import_lev_start () ;
 int import_paths (char*,int) ;
 int init_dyn_data () ;
 int kprintf (char*,...) ;
 void* optarg ;
 int optind ;
 scalar_t__ pmemcache_dump ;
 char* progname ;
 void* row_prefix ;
 int set_debug_handlers () ;
 int split_modulo ;
 int split_rem ;
 int sscanf (void*,char*,...) ;
 char* strrchr (char*,char) ;
 int test_paths (char*) ;
 int usage () ;
 int use_old_secret ;
 char* username ;
 int verbosity ;
 scalar_t__ volume_id ;

int main (int argc, char *argv[]) {
  int i;
  int dump_lev_start = 1;
  set_debug_handlers();
  progname = strrchr (argv[0], '/');
  progname = (progname == ((void*)0)) ? argv[0] : progname + 1;
  int group_paths = 0;
  while ((i = getopt (argc, argv, "m:vu:Ip:g:V:TP:S")) != -1) {
    switch (i) {
    case 'S':
      use_old_secret = 1;
      break;
    case 'P':
      if (pmemcache_dump) {
        fclose (pmemcache_dump);
      }
      pmemcache_dump = fopen (optarg, "a");
      break;
    case 'T':
      dump_lev_start = 0;
      break;
    case 'V':
      sscanf (optarg, "%lld", &volume_id);
      break;
    case 'm':
      assert (sscanf (optarg, "%d,%d", &split_rem, &split_modulo) == 2);
      assert (split_modulo > 0 && split_modulo <= 1000 && split_rem >= 0 && split_rem < split_modulo);
      break;
    case 'v':
      verbosity++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'I':
      dump_rows = 1;
      break;
    case 'p':
      row_prefix = optarg;
      break;
    case 'g':
      assert (group_paths < MAX_GROUP_PATHS);
      GP[group_paths++] = optarg;
    }
  }

  if (volume_id < 0) {
    usage ();
    kprintf ("volume_id is not given\n");
    exit (1);
  }

  if (!split_modulo) {
    usage ();
    kprintf ("-m option is not given\n");
    exit (1);
  }

  if (10000 % split_modulo) {
    kprintf ("split_modulo should divides 10000\n");
    exit (1);
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit(1);
  }

  for (i = optind; i < argc; i++) {
    test_paths (argv[i]);
  }
  for (i = 0; i < group_paths; i++) {
    test_paths (GP[i]);
  }

  init_dyn_data ();
  aes_load_pwd_file (((void*)0));
  if (dump_lev_start) {
    import_lev_start ();
  }

  for (i = optind; i < argc; i++) {
    import_paths (argv[i], 1);
  }
  for (i = 0; i < group_paths; i++) {
    import_paths (GP[i], -1);
  }




  if (pmemcache_dump) {
    fclose (pmemcache_dump);
  }

  return 0;
}
