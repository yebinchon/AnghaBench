
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_message {char* label; } ;
struct commit {int dummy; } ;


 char* _ (char*) ;
 int fprintf (int ,char*,...) ;
 int free_message (struct commit*,struct commit_message*) ;
 scalar_t__ get_message (struct commit*,struct commit_message*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 struct commit* lookup_commit (struct repository*,struct object_id*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int stderr ;

__attribute__((used)) static int stopped_at_head(struct repository *r)
{
 struct object_id head;
 struct commit *commit;
 struct commit_message message;

 if (get_oid("HEAD", &head) ||
     !(commit = lookup_commit(r, &head)) ||
     parse_commit(commit) || get_message(commit, &message))
  fprintf(stderr, _("Stopped at HEAD\n"));
 else {
  fprintf(stderr, _("Stopped at %s\n"), message.label);
  free_message(commit, &message);
 }
 return 0;

}
