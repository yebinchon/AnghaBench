
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int binlog_check_mode ;
 int delay_targeting ;
 long long dynamic_data_buffer_size ;
 int index_mode ;
 void* optarg ;
 void* read_stats_filename ;
 int sscanf (void*,char*,long long*,char*) ;
 int targeting_disabled ;
 int use_stemmer ;
 void* write_stats_filename ;

int f_parse_option (int val) {
  long long x;
  char c;
  switch (val) {
  case 'i':
    targeting_disabled = 1;
    break;
  case 'I':
    index_mode = 1;
    break;
  case 'C':
    binlog_check_mode++;
    break;
  case 'S':
    use_stemmer ^= 1;
    break;
  case 'D':
    delay_targeting = 0;
    break;
  case 'R':
    read_stats_filename = optarg;
    break;
  case 'W':
    write_stats_filename = optarg;
    break;
  case 'H':
    c = 0;
    assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
    switch (c | 0x20) {
      case 'k': x <<= 10; break;
      case 'm': x <<= 20; break;
      case 'g': x <<= 30; break;
      case 't': x <<= 40; break;
      default: assert (c == 0x20);
    }
    if (val == 'H' && x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (100LL << 30))) {
      dynamic_data_buffer_size = x;
    }
    break;
  default:
    return -1;
  }
  return 0;
}
