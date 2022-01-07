
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int taglist; int * pattern; } ;
typedef TYPE_1__ tag_filter_data ;
typedef int git_oid ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_REFS_TAGS_DIR_LEN ;
 int GIT_UNUSED (int *) ;
 char* git__strdup (char const*) ;
 int git_vector_insert (int ,char*) ;
 scalar_t__ wildmatch (int *,char const*,int ) ;

__attribute__((used)) static int tag_list_cb(const char *tag_name, git_oid *oid, void *data)
{
 tag_filter_data *filter = (tag_filter_data *)data;
 GIT_UNUSED(oid);

 if (!*filter->pattern ||
     wildmatch(filter->pattern, tag_name + GIT_REFS_TAGS_DIR_LEN, 0) == 0)
 {
  char *matched = git__strdup(tag_name + GIT_REFS_TAGS_DIR_LEN);
  GIT_ERROR_CHECK_ALLOC(matched);

  return git_vector_insert(filter->taglist, matched);
 }

 return 0;
}
