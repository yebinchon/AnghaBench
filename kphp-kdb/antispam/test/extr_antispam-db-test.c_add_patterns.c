
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uahash; int flags; int ip; int id; } ;
typedef TYPE_1__ antispam_pattern_t ;


 int FALSE ;
 int N ;
 int * _flag ;
 int * _id ;
 int * _ip ;
 int * _uahash ;
 int antispam_add (TYPE_1__,int ,int ) ;
 double current_time () ;
 int dyn_free_bytes () ;
 int fprintf (int ,char*,double,...) ;
 int memory_statistic () ;
 int stderr ;
 int * str ;

__attribute__((used)) static void add_patterns (void) {
  int i;
  fprintf (stderr, "[%6.2f] Add all patterns... [free bytes = %ld] ", current_time(), dyn_free_bytes());
  for (i = 0; i < N; i++) {
    antispam_pattern_t p;
    p.id = _id[i];
    p.ip = _ip[i];
    p.flags = _flag[i];
    p.uahash = _uahash[i];
    antispam_add (p, str[i], FALSE);
  }
  fprintf (stderr, "OK [free bytes = %ld]\n", dyn_free_bytes());
  memory_statistic();
}
