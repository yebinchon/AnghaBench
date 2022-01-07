
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_msg_entry {scalar_t__ written; TYPE_1__* merge_head; } ;
struct TYPE_2__ {int * remote_url; int * ref_name; } ;



__attribute__((used)) static int msg_entry_is_oid(
 const struct merge_msg_entry *merge_msg_entry)
{
 return (merge_msg_entry->written == 0 &&
  merge_msg_entry->merge_head->ref_name == ((void*)0) &&
  merge_msg_entry->merge_head->remote_url == ((void*)0));
}
