
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 void* atoi (char*) ;
 int blksize ;
 int fprintf (int ,char*,...) ;
 char* optarg ;
 int parse_port_range (char*) ;
 void* stats_port ;
 int stderr ;
 int timeout ;
 int usage () ;

int f_parse_option (int val) {
  switch (val) {
  case 'B':
    blksize = atoi (optarg);
    assert (blksize >= 8 && blksize <= 65464);
    break;
  case 'P':
    stats_port = atoi (optarg);
    break;
  case 'R':
    if (parse_port_range (optarg) < 0) {
      fprintf (stderr, "Illegal -R %s option\n", optarg);
      usage ();
      break;
    }
  case 'T':
    timeout = atoi (optarg);
    assert (timeout >= 1 && timeout <= 255);
    break;
  default:
    fprintf (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}
