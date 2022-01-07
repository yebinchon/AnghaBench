
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ds_info {unsigned int num_ds_states; struct ds_cap_state* ds_states; } ;
struct ds_cap_state {int dummy; } ;



__attribute__((used)) static struct ds_cap_state *find_cap(struct ds_info *dp, u64 handle)
{
 unsigned int index = handle >> 32;

 if (index >= dp->num_ds_states)
  return ((void*)0);
 return &dp->ds_states[index];
}
