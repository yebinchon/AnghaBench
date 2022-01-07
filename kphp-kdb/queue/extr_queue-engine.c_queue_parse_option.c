
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 void* atoi (int ) ;
 int config_filename ;
 void* engine_id ;
 void* engine_n ;
 int fprintf (int ,char*) ;
 void* http_port ;
 int max_memory ;
 int mlockall (int) ;
 void* news_port ;
 int optarg ;
 int stderr ;
 int use_stemmer ;
 void* watchcat_port ;

int queue_parse_option (int val) {
  switch (val) {
    case 'C':
      config_filename = optarg;
      break;
    case 'e':
      engine_n = atoi (optarg);
      break;
    case 'H':
      http_port = atoi (optarg);
      break;
    case 'm':
      max_memory = atoi (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'N':
      news_port = atoi (optarg);
      break;
    case 'P':
      watchcat_port = atoi (optarg);
      break;
    case 'q':
      engine_id = atoi (optarg);
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
