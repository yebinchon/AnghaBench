
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 void* atoi (int ) ;
 int fprintf (int ,char*) ;
 int max_memory ;
 int mlockall (int) ;
 int optarg ;
 void* queue_port ;
 int stderr ;
 int use_stemmer ;

int watchcat_parse_option (int val) {
  switch (val) {
    case 'm':
      max_memory = atoi (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'P':
      queue_port = atoi (optarg);
      break;
    case 'k':
      if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'S':
      use_stemmer = 1;
      break;
    default:
      return -1;
  }
  return 0;
}
