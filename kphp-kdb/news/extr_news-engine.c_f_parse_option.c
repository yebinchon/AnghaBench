
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long DEFAULT_MAX_ALLOCATED_METAFILES_SIZE ;
 long long MIN_MAX_ALLOCATED_METAFILES_SIZE ;
 long long atoi (int ) ;
 int check_index_mode ;
 int index_mode ;
 long long max_allocated_metafiles_size ;
 long long max_news_days ;
 int optarg ;
 int regenerate_index_mode ;

int f_parse_option (int val) {
  switch (val) {
  case 't':
    max_news_days = atoi(optarg);
    break;
  case 'i':
    index_mode++;
    break;
  case 'C':
    max_allocated_metafiles_size = atoi (optarg) * (long long) 1024 * 1024;
    if (max_allocated_metafiles_size < MIN_MAX_ALLOCATED_METAFILES_SIZE) {
     max_allocated_metafiles_size = DEFAULT_MAX_ALLOCATED_METAFILES_SIZE;
    }
    break;
  case 'L':
    check_index_mode ++;
    break;
  case 'R':
    regenerate_index_mode ++;
    break;
  default:
    return -1;
  }
  return 0;
}
