
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long atoi (int ) ;
 int auto_create_new_versions ;
 int binlog_cyclic_mode ;
 int create_day_start ;
 int custom_version_names ;
 long long default_timezone ;
 int exit (int) ;
 int ignore_set_timezone ;
 int index_mode ;
 int kprintf (char*,int ) ;
 double max_counters_growth_percent ;
 int memcache_auto_answer_mode ;
 long long memory_to_index ;
 int mode_ignore_user_id ;
 int monthly_stat ;
 int optarg ;
 int sscanf (int ,char*,double*) ;
 int test_mode ;

int f_parse_option (int val) {
  switch (val) {
  case 'f':
    memcache_auto_answer_mode ++;
    break;
  case 'T':
    test_mode ++;
    break;
  case 'm':
    mode_ignore_user_id = 1;
    break;
  case 'i':
    index_mode = 1;
    break;
  case 'M':
    memory_to_index = atoi(optarg) * (long long) 1024 * 1024;
    break;
  case 'y':
    auto_create_new_versions = 0;
    break;
  case 'x':
    custom_version_names = 1;
    auto_create_new_versions = 0;
    break;
  case 'E':
    monthly_stat ++;
    break;
  case 't':
    ignore_set_timezone ++;
    break;
  case 'D':
    create_day_start ++;
    break;
  case 'P':
    if ((sscanf (optarg, "%lf", &max_counters_growth_percent) != 1) || max_counters_growth_percent < 0.1) {
      kprintf ("Illegal -P option: %s\n", optarg);
      exit (1);
    }
    break;
  case 'S':
    default_timezone = atoi (optarg);
    break;
  case 1000:
    binlog_cyclic_mode = 1;
    break;
  default:
    return -1;
  }
  return 0;
}
