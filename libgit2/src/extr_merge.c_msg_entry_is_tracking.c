
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_msg_entry {scalar_t__ written; TYPE_1__* merge_head; } ;
typedef int git_vector ;
struct TYPE_2__ {int * ref_name; int * remote_url; } ;


 int GIT_REFS_REMOTES_DIR ;
 int GIT_UNUSED (int *) ;
 scalar_t__ git__strncmp (int ,int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int msg_entry_is_tracking(
 const struct merge_msg_entry *entry,
 git_vector *entries)
{
 GIT_UNUSED(entries);

 return (entry->written == 0 &&
  entry->merge_head->remote_url == ((void*)0) &&
  entry->merge_head->ref_name != ((void*)0) &&
  git__strncmp(GIT_REFS_REMOTES_DIR, entry->merge_head->ref_name, strlen(GIT_REFS_REMOTES_DIR)) == 0);
}
