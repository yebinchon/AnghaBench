
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N ;
 int* _id ;
 int antispam_del (int) ;
 double current_time () ;
 int dyn_free_bytes () ;
 int fprintf (int ,char*,double,...) ;
 int memory_statistic () ;
 int stderr ;

__attribute__((used)) static void del_patterns (void) {
  int i;
  fprintf (stderr, "[%6.2f] Del all patterns... [free bytes = %ld] ", current_time(), dyn_free_bytes());
  for (i = 0; i < N; i++) {
    antispam_del (_id[i]);
  }



  antispam_del (178537843);

  fprintf (stderr, "OK [free bytes = %ld]\n", dyn_free_bytes());
  memory_statistic();
}
