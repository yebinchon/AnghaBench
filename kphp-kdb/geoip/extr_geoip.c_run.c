
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP (unsigned int) ;
 int add (int *,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int assert (int) ;
 int* buff ;
 int end_parse () ;
 int fgets (int*,int,int ) ;
 int fprintf (int ,char*,int,...) ;
 int init_parse () ;
 int mode ;
 int pack (int *) ;
 unsigned int parse_country () ;
 unsigned int parse_int () ;
 unsigned int parse_ip () ;
 int parse_ip_mask (unsigned int*,unsigned int*) ;
 int parse_string () ;
 int root ;
 int rules ;
 int skip_parse () ;
 int stderr ;
 int stdin ;
 int total ;
 int verbosity ;

void run (void) {
  while (1) {
    if (!fgets (buff, 1000000, stdin)) {
      break;
    }
    init_parse ();
    if (*buff == 10 || *buff == 13 || *buff == '#') {
      continue;
    }
    unsigned start_ip, end_ip, country, region;
    if (!mode) {
      start_ip = parse_ip ();
      assert (!end_parse ());
      end_ip = parse_ip ();
      assert (!end_parse ());
      assert (start_ip == parse_int ());
      assert (!end_parse ());
      assert (end_ip == parse_int ());
      assert (!end_parse ());
      country = parse_country ();
      assert (country);
      assert (!end_parse ());
      assert (parse_string ());
      assert (end_parse ());
    } else if (mode == 1) {
      parse_ip_mask (&start_ip, &end_ip);
      assert (!end_parse ());
      country = parse_int ();
      assert (end_parse ());
    } else if (mode == 2) {
      start_ip = parse_ip ();
      assert (!end_parse ());
      end_ip = parse_ip ();
      assert (!end_parse ());
      country = parse_country ();
      assert (country);
      assert (!end_parse ());
      region = parse_country ();
      assert (!end_parse ());
      assert (skip_parse () == 6);
      assert (end_parse ());
      country = (country << 16) + region;
    } else {
      assert (0);
    }
    if (verbosity >= 3) {

      fprintf (stderr, "add: start_ip = %u.%u.%u.%u, end_ip = %u.%u.%u.%u, color = %d\n", (start_ip >> 24) & 0xff, (start_ip >> 16) & 0xff, (start_ip >> 8) & 0xff, (start_ip >> 0) & 0xff, (end_ip >> 24) & 0xff, (end_ip >> 16) & 0xff, (end_ip >> 8) & 0xff, (end_ip >> 0) & 0xff, country);
    }
    add (&root, start_ip, end_ip, country, end_ip - start_ip);
    rules ++;
  }
  if (verbosity) {
    fprintf (stderr, "total %d rules\n", rules);
    fprintf (stderr, "total %d vertices\n", total);
  }
  pack (&root);
}
