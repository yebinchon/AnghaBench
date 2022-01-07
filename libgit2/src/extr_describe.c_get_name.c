
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct get_name_data {int names; int repo; TYPE_1__* opts; } ;
typedef int git_oid ;
struct TYPE_2__ {scalar_t__ describe_strategy; scalar_t__ pattern; } ;


 scalar_t__ GIT_DESCRIBE_ALL ;
 int GIT_REFS_DIR ;
 int GIT_REFS_TAGS_DIR ;
 int add_to_known_names (int ,int ,char const*,int *,unsigned int,int *) ;
 int git__prefixcmp (char const*,int ) ;
 int retrieve_peeled_tag_or_object_oid (int *,int *,int ,char const*) ;
 int strlen (int ) ;
 scalar_t__ wildmatch (scalar_t__,char const*,int ) ;

__attribute__((used)) static int get_name(const char *refname, void *payload)
{
 struct get_name_data *data;
 bool is_tag, is_annotated, all;
 git_oid peeled, sha1;
 unsigned int prio;
 int error = 0;

 data = (struct get_name_data *)payload;
 is_tag = !git__prefixcmp(refname, GIT_REFS_TAGS_DIR);
 all = data->opts->describe_strategy == GIT_DESCRIBE_ALL;


 if (!all && !is_tag)
  return 0;


 if (data->opts->pattern && (!is_tag || wildmatch(data->opts->pattern,
  refname + strlen(GIT_REFS_TAGS_DIR), 0)))
    return 0;


 if ((error = retrieve_peeled_tag_or_object_oid(
  &peeled, &sha1, data->repo, refname)) < 0)
  return error;

 is_annotated = error;







 if (is_annotated)
  prio = 2;
 else if (is_tag)
  prio = 1;
 else
  prio = 0;

 add_to_known_names(data->repo, data->names,
  all ? refname + strlen(GIT_REFS_DIR) : refname + strlen(GIT_REFS_TAGS_DIR),
  &peeled, prio, &sha1);
 return 0;
}
