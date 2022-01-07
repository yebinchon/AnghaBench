
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int entry ;
struct TYPE_11__ {char** strings; int count; } ;


 int _index ;
 TYPE_4__ _pathspecs ;
 int _repo ;
 int _target ;
 int assert_content_in_index (TYPE_4__*,int,int *) ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_git_pass (int ) ;
 int git_index_add (int ,TYPE_1__*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_index_remove_bypath (int ,char*) ;
 int git_reset_default (int ,int ,TYPE_4__*) ;
 int git_revparse_single (int *,int ,char*) ;
 int initialize (char*) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

void test_reset_default__staged_rename_reset_delete(void)
{
 git_index_entry entry;
 const git_index_entry *existing;
 char *paths[] = { "new.txt" };

 initialize("testrepo2");

 existing = git_index_get_bypath(_index, "new.txt", 0);
 cl_assert(existing);
 memcpy(&entry, existing, sizeof(entry));

 cl_git_pass(git_index_remove_bypath(_index, "new.txt"));

 entry.path = "renamed.txt";
 cl_git_pass(git_index_add(_index, &entry));

 _pathspecs.strings = paths;
 _pathspecs.count = 1;

 assert_content_in_index(&_pathspecs, 0, ((void*)0));

 cl_git_pass(git_revparse_single(&_target, _repo, "HEAD"));
 cl_git_pass(git_reset_default(_repo, _target, &_pathspecs));

 assert_content_in_index(&_pathspecs, 1, ((void*)0));
}
