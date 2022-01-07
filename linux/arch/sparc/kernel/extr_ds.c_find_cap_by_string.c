
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_info {int num_ds_states; struct ds_cap_state* ds_states; } ;
struct ds_cap_state {int service_id; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct ds_cap_state *find_cap_by_string(struct ds_info *dp,
            const char *name)
{
 int i;

 for (i = 0; i < dp->num_ds_states; i++) {
  if (strcmp(dp->ds_states[i].service_id, name))
   continue;

  return &dp->ds_states[i];
 }
 return ((void*)0);
}
