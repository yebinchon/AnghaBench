
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FN ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int assert (int) ;
 void* atoi (char*) ;
 int atol (char*) ;
 int dump_index_mode ;
 int dump_mode ;
 char* dump_name ;
 char* dump_query ;
 int errno ;
 int * field_names ;
 int fprintf (int ,char*,...) ;
 void* from_ts ;
 int index_mode ;
 int is_name (int ) ;
 int max_memory ;
 int mean_event_size ;
 int mlockall (int) ;
 int my_verbosity ;
 int nice (void*) ;
 char* optarg ;
 int perror (char*) ;
 int query_memory ;
 int sscanf (char*,char*,int*,int*) ;
 char* stat_queries_file ;
 int stderr ;
 int test_mode ;
 void* to_ts ;
 int usage () ;
 int write_only ;

int logs_parse_option (int val) {
  switch (val) {
    case 'D':
      assert (!dump_mode);
      dump_mode = 1;
      dump_query = optarg;
      break;
    case 'e':
      mean_event_size = atoi (optarg);
      assert (mean_event_size > 50 && mean_event_size < 1000);
      break;
    case 'F':
      from_ts = atoi (optarg);
      if (from_ts < 0) {
        usage();
        return 2;
      }
      break;
    case 'm':
      max_memory = atol (optarg) * 1048576;
      break;
    case 'N': {
      int num, pos;
      assert (sscanf (optarg, "%d%n", &num, &pos) >= 1 && 0 <= num && num < FN && optarg[pos] == ',');
      if (!is_name (optarg + pos + 1)) {
        fprintf (stderr, "Not a valid name: \"%s\"\n", optarg + pos + 1);
        usage();
        return 2;
      }
      field_names[num] = optarg + pos + 1;
      break;
    }
    case 'q':
      query_memory = atol (optarg) * 1048576;
      break;
    case 'R':
      dump_name = optarg;
      break;
    case 's':
      assert (!dump_mode);
      dump_mode = 2;
      dump_query = "0";
      stat_queries_file = optarg;
      break;
    case 'T':
      to_ts = atoi (optarg);
      if (to_ts < 0) {
        usage();
        return 2;
      }
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'I':
      dump_index_mode = 1;
      break;
    case 'k':
      if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'n':
      errno = 0;
      nice (atoi (optarg));
      if (errno) {
        perror ("nice");
      }
      break;
    case 't':
      test_mode = 1;
      query_memory = 500000000;
      break;
    case 'V':
      my_verbosity++;
      break;
    case 'w':
      write_only = 1;
      break;
    default:
      return -1;
  }
  return 0;
}
