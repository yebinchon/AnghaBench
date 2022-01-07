
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clp_state_data {scalar_t__ fid; int state; } ;
struct clp_fh_list_entry {scalar_t__ fid; int config_state; } ;



__attribute__((used)) static void __clp_get_state(struct clp_fh_list_entry *entry, void *data)
{
 struct clp_state_data *sd = data;

 if (entry->fid != sd->fid)
  return;

 sd->state = entry->config_state;
}
