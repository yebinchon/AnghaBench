
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct merge_msg_entry {TYPE_1__* merge_head; } ;
struct TYPE_6__ {scalar_t__ length; scalar_t__* contents; } ;
typedef TYPE_2__ git_vector ;
typedef int git_filebuf ;
struct TYPE_5__ {char* remote_url; } ;


 int GIT_REFS_HEADS_DIR ;
 int merge_msg_write_entries (int *,TYPE_2__*,char*,char*,int ,char const*,char) ;
 int strlen (int ) ;

__attribute__((used)) static int merge_msg_write_remotes(
 git_filebuf *file,
 git_vector *entries,
 char sep)
{
 const char *source;

 if (entries->length == 0)
  return 0;

 source = ((struct merge_msg_entry *)entries->contents[0])->merge_head->remote_url;

 return merge_msg_write_entries(file, entries,
  "branch", "branches", strlen(GIT_REFS_HEADS_DIR), source, sep);
}
