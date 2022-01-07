
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int ,int ) ;
 int stderr ;
 int tot_Pc ;
 int tot_users ;

void output_stats (void) {
  fprintf (stderr, "%lld words hashed describing %d users\n",
    tot_Pc, tot_users);
}
