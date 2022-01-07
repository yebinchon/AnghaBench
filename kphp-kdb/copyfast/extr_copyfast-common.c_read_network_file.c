
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAX_RULES ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int * network ;
 scalar_t__ read_rule (char*,int *) ;
 int rules_num ;
 int stderr ;
 scalar_t__ verbosity ;

int read_network_file (char *filename) {
  FILE *f = fopen (filename, "rt");
  if (!f) {
    fprintf (stderr, "can not open network file (error %m)\n");
    return 0;
  }
  char buf[256];
  while (!feof (f)) {
    if (rules_num >= MAX_RULES) {
      fclose (f);
      return rules_num;
    }
    fgets (buf, 255, f);
    rules_num += read_rule(buf, &network[rules_num]);
  }
  if (verbosity) {
    fprintf (stderr, "Read %d rules from network description file\n", rules_num);
  }
  fclose (f);
  return rules_num;
}
