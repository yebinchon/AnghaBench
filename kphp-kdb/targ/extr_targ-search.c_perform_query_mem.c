
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int condition_t ;


 int Qq ;
 int R_tot ;
 scalar_t__* User ;
 int build_condition_from_query (int ,int) ;
 int fprintf (int ,char*) ;
 int max_uid ;
 int postprocess_res () ;
 int stderr ;
 int store_res (int) ;
 scalar_t__ user_matches_condition (scalar_t__,int ,int) ;
 int verbosity ;

int perform_query_mem (void) {
  int i;

  if (verbosity > 1) {
    fprintf (stderr, "performing query by complete scanning with pre-compiled condition\n");
  }
  condition_t C = build_condition_from_query (Qq, 1);

  for (i = 0; i <= max_uid; i++) {
    if (User[i] && user_matches_condition (User[i], C, i)) {
      store_res (i);
    }
  }

  postprocess_res();

  return R_tot;
}
