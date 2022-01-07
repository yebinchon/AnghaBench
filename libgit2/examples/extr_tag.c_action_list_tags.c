
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int repo; TYPE_1__* opts; } ;
typedef TYPE_2__ tag_state ;
struct TYPE_10__ {size_t count; int * strings; int member_0; } ;
typedef TYPE_3__ git_strarray ;
struct TYPE_8__ {char* pattern; } ;


 int check_lg2 (int ,char*,int *) ;
 int each_tag (int ,TYPE_2__*) ;
 int git_strarray_free (TYPE_3__*) ;
 int git_tag_list_match (TYPE_3__*,char const*,int ) ;

__attribute__((used)) static void action_list_tags(tag_state *state)
{
 const char *pattern = state->opts->pattern;
 git_strarray tag_names = {0};
 size_t i;

 check_lg2(git_tag_list_match(&tag_names, pattern ? pattern : "*", state->repo),
   "Unable to get list of tags", ((void*)0));

 for(i = 0; i < tag_names.count; i++) {
  each_tag(tag_names.strings[i], state);
 }

 git_strarray_free(&tag_names);
}
