
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct merge_msg_entry {scalar_t__ written; TYPE_1__* merge_head; } ;
struct TYPE_6__ {scalar_t__ length; } ;
typedef TYPE_2__ git_vector ;
struct TYPE_5__ {int * remote_url; int * ref_name; } ;


 int GIT_REFS_HEADS_DIR ;
 scalar_t__ git__strcmp (int *,int *) ;
 scalar_t__ git__strncmp (int ,int *,int ) ;
 struct merge_msg_entry* git_vector_get (TYPE_2__*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int msg_entry_is_remote(
 const struct merge_msg_entry *entry,
 git_vector *entries)
{
 if (entry->written == 0 &&
  entry->merge_head->remote_url != ((void*)0) &&
  entry->merge_head->ref_name != ((void*)0) &&
  git__strncmp(GIT_REFS_HEADS_DIR, entry->merge_head->ref_name, strlen(GIT_REFS_HEADS_DIR)) == 0)
 {
  struct merge_msg_entry *existing;


  if (entries->length == 0)
   return 1;

  existing = git_vector_get(entries, 0);

  return (git__strcmp(existing->merge_head->remote_url,
   entry->merge_head->remote_url) == 0);
 }

 return 0;
}
