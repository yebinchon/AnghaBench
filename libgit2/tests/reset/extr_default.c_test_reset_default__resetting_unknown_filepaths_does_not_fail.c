
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** strings; int count; } ;


 TYPE_1__ _pathspecs ;
 int _repo ;
 int _target ;
 int assert_content_in_index (TYPE_1__*,int,int *) ;
 int cl_git_pass (int ) ;
 int git_reset_default (int ,int ,TYPE_1__*) ;
 int git_revparse_single (int *,int ,char*) ;
 int initialize (char*) ;

void test_reset_default__resetting_unknown_filepaths_does_not_fail(void)
{
 char *paths[] = { "I_am_not_there.txt", "me_neither.txt" };

 initialize("status");

 _pathspecs.strings = paths;
 _pathspecs.count = 2;

 assert_content_in_index(&_pathspecs, 0, ((void*)0));

 cl_git_pass(git_revparse_single(&_target, _repo, "HEAD"));
 cl_git_pass(git_reset_default(_repo, _target, &_pathspecs));

 assert_content_in_index(&_pathspecs, 0, ((void*)0));
}
