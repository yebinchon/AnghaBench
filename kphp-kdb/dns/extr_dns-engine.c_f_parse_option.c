
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_MAX_RESPONSE_RECORDS ;
 void* atoi (int ) ;
 int dns_max_response_records ;
 int exit (int) ;
 int fprintf (int ,char*,char,int) ;
 int keep_going ;
 int kprintf (char*) ;
 int optarg ;
 int output_binlog_name ;
 void* stats_port ;
 int stderr ;
 int workers ;

int f_parse_option (int val) {
  int c;
  switch (val) {
  case 'E':
    output_binlog_name = optarg;
    break;
  case 'M':
    workers = atoi (optarg);
    if (workers < 0) {
      workers = 0;
    }
    if (workers > 16) {
      kprintf ("Too many additional workers\n");
      exit (1);
    }
    break;
  case 'P':
    stats_port = atoi (optarg);
    break;
  case 'R':
    c = atoi (optarg);
    if (c >= 1 && c <= DNS_MAX_RESPONSE_RECORDS) {
      dns_max_response_records = c;
    }
    break;
  case 'k':
    keep_going = 1;
    break;
  default:
    fprintf (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}
