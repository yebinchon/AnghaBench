
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int assert (int) ;
 int atoi (int ) ;
 int fprintf (int ,char*) ;
 int index_mode ;
 int max_memory ;
 int mlockall (int) ;
 int optarg ;
 int stderr ;
 int * types ;

int magus_parse_option (int val) {
  switch (val) {






    case 'm':
      max_memory = atoi (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'T': {
      int type = atoi (optarg);
      assert (0 < type && type < 256);
      types[type]++;
      break;
    }
    case 'i':
      index_mode = 1;
      break;
    case 'k':
      if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    default:
      return -1;
  }
  return 0;
}
