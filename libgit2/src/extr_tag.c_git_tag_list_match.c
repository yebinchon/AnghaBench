
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* pattern; int * taglist; } ;
typedef TYPE_1__ tag_filter_data ;
typedef int git_vector ;
struct TYPE_5__ {char** strings; int count; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_repository ;


 int assert (int ) ;
 int git_tag_foreach (int *,int *,void*) ;
 scalar_t__ git_vector_detach (int *,int *,int *) ;
 int git_vector_free (int *) ;
 int git_vector_init (int *,int,int *) ;
 int tag_list_cb ;

int git_tag_list_match(git_strarray *tag_names, const char *pattern, git_repository *repo)
{
 int error;
 tag_filter_data filter;
 git_vector taglist;

 assert(tag_names && repo && pattern);

 if ((error = git_vector_init(&taglist, 8, ((void*)0))) < 0)
  return error;

 filter.taglist = &taglist;
 filter.pattern = pattern;

 error = git_tag_foreach(repo, &tag_list_cb, (void *)&filter);

 if (error < 0)
  git_vector_free(&taglist);

 tag_names->strings =
  (char **)git_vector_detach(&tag_names->count, ((void*)0), &taglist);

 return 0;
}
