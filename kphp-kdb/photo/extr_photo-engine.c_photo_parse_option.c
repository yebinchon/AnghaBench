
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int assert (int) ;
 int atoi (int ) ;
 int disable_crc32 ;
 int dump_fields_str ;
 int dump_unimported_mode ;
 int fprintf (int ,char*) ;
 int index_mode ;
 int max_memory ;
 int mlockall (int) ;
 int optarg ;
 int repair_binlog_mode ;
 int stderr ;
 int write_only ;

int photo_parse_option (int val) {
  switch (val) {
    case 'D':
      disable_crc32 = atoi (optarg);
      assert (0 <= disable_crc32 && disable_crc32 <= 3);
      break;
    case 'm':
      max_memory = atoi (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'M':
      dump_fields_str = optarg;
      index_mode = 1;
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'I':
      dump_unimported_mode++;
      index_mode = 1;
      break;
    case 'k':
      if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'R':
      repair_binlog_mode = 1;
      index_mode = 1;
      break;
    case 'w':
      write_only = 1;
      break;
    default:
      return -1;
  }
  return 0;
}
