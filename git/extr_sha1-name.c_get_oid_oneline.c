
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_6__ {int oid; } ;
struct commit {TYPE_2__ object; } ;
typedef int regex_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ object; } ;


 int ONELINE_SEEN ;
 int REG_EXTENDED ;
 int clear_commit_marks (TYPE_3__*,int ) ;
 int commit_list_insert (TYPE_3__*,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;
 char* get_commit_buffer (struct commit*,int *) ;
 int oidcpy (struct object_id*,int *) ;
 int parse_object (struct repository*,int *) ;
 struct commit* pop_most_recent_commit (struct commit_list**,int ) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;
 char* strstr (char const*,char*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static int get_oid_oneline(struct repository *r,
      const char *prefix, struct object_id *oid,
      struct commit_list *list)
{
 struct commit_list *backup = ((void*)0), *l;
 int found = 0;
 int negative = 0;
 regex_t regex;

 if (prefix[0] == '!') {
  prefix++;

  if (prefix[0] == '-') {
   prefix++;
   negative = 1;
  } else if (prefix[0] != '!') {
   return -1;
  }
 }

 if (regcomp(&regex, prefix, REG_EXTENDED))
  return -1;

 for (l = list; l; l = l->next) {
  l->item->object.flags |= ONELINE_SEEN;
  commit_list_insert(l->item, &backup);
 }
 while (list) {
  const char *p, *buf;
  struct commit *commit;
  int matches;

  commit = pop_most_recent_commit(&list, ONELINE_SEEN);
  if (!parse_object(r, &commit->object.oid))
   continue;
  buf = get_commit_buffer(commit, ((void*)0));
  p = strstr(buf, "\n\n");
  matches = negative ^ (p && !regexec(&regex, p + 2, 0, ((void*)0), 0));
  unuse_commit_buffer(commit, buf);

  if (matches) {
   oidcpy(oid, &commit->object.oid);
   found = 1;
   break;
  }
 }
 regfree(&regex);
 free_commit_list(list);
 for (l = backup; l; l = l->next)
  clear_commit_marks(l->item, ONELINE_SEEN);
 free_commit_list(backup);
 return found ? 0 : -1;
}
