
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char** strings; int count; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_7__ {char** strings; int count; } ;


 TYPE_2__ _pathspecs ;
 int _repo ;
 int _target ;
 int assert_content_in_index (TYPE_2__*,int,TYPE_1__*) ;
 int cl_git_pass (int ) ;
 int git_reset_default (int ,int ,TYPE_2__*) ;
 int git_revparse_single (int *,int ,char*) ;
 int initialize (char*) ;

void test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries(void)
{
 git_strarray before, after;

 char *paths[] = { "staged_changes", "staged_changes_file_deleted" };
 char *before_shas[] = { "55d316c9ba708999f1918e9677d01dfcae69c6b9",
  "a6be623522ce87a1d862128ac42672604f7b468b" };
 char *after_shas[] = { "32504b727382542f9f089e24fddac5e78533e96c",
  "061d42a44cacde5726057b67558821d95db96f19" };

 initialize("status");

 _pathspecs.strings = paths;
 _pathspecs.count = 2;
 before.strings = before_shas;
 before.count = 2;
 after.strings = after_shas;
 after.count = 2;

 cl_git_pass(git_revparse_single(&_target, _repo, "0017bd4"));
 assert_content_in_index(&_pathspecs, 1, &before);

 cl_git_pass(git_reset_default(_repo, _target, &_pathspecs));

 assert_content_in_index(&_pathspecs, 1, &after);
}
