
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 char* _ (char*) ;
 int deduplicate_islands (struct repository*) ;
 int find_island_for_ref ;
 int for_each_ref (int ,int *) ;
 int fprintf (int ,char*,int) ;
 int git_config (int ,int *) ;
 int island_config_callback ;
 int island_counter ;
 int island_marks ;
 int kh_init_oid_map () ;
 int kh_init_str () ;
 int remote_islands ;
 int stderr ;

void load_delta_islands(struct repository *r, int progress)
{
 island_marks = kh_init_oid_map();
 remote_islands = kh_init_str();

 git_config(island_config_callback, ((void*)0));
 for_each_ref(find_island_for_ref, ((void*)0));
 deduplicate_islands(r);

 if (progress)
  fprintf(stderr, _("Marked %d islands, done.\n"), island_counter);
}
