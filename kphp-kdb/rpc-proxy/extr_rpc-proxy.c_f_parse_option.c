
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* PING_INTERVAL ;
 int assert (int) ;
 void* atof (int ) ;
 int atoi (int ) ;
 int binlog_cyclic_mode ;
 int binlog_mode_on ;
 int bname ;
 long long dynamic_data_buffer_size ;
 int errno ;
 long long max_binlog_size ;
 int nice (int) ;
 int only_first_cluster ;
 int optarg ;
 int perror (char*) ;
 void* ping_interval ;
 int rpc_crc32_mode ;
 int rpc_disable_crc32_check ;
 int sscanf (int ,char*,long long*,char*) ;
 int tcp_buffers ;
 int test_mode ;
 void* vv_tl_drop_probability ;

int f_parse_option (int val) {
  char c;
  long long x;
  switch (val) {
  case 'f':
    only_first_cluster ++;
    return 0;
  case 'T':
    ++test_mode;
    return 0;
  case 'N':
    tcp_buffers ++;
    return 0;
  case 'C':
    rpc_crc32_mode = atoi (optarg);
    rpc_disable_crc32_check = (rpc_crc32_mode & 1);
    return 0;
  case 'H': case 'S':
    c = 0;
    assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
    switch (c | 0x20) {
      case 'k': x <<= 10; break;
      case 'm': x <<= 20; break;
      case 'g': x <<= 30; break;
      case 't': x <<= 40; break;
      default: assert (c == 0x20);
    }
    if (val == 'H') {
      if (x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (100LL << 30))) {
        dynamic_data_buffer_size = x;
      }
    } else if (val == 'S') {
      max_binlog_size = x;
    }
    break;
  case 'y':
    ping_interval = atof (optarg);
    if (ping_interval <= 0) { ping_interval = PING_INTERVAL; }
    break;
  case 'B':
    bname = optarg;
    binlog_cyclic_mode = 1;
    binlog_mode_on |= 1;

    break;
  case 'F':
    binlog_mode_on |= 2;
    break;
  case 'Q':
    vv_tl_drop_probability = atof (optarg);
    break;
  case 'n':
    errno = 0;
    nice (atoi (optarg));
    if (errno) {
      perror ("nice");
    }
    break;
  default:
    return -1;
  }
  return 0;
}
