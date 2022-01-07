
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; int * strings; } ;


 int _index ;
 TYPE_1__ _pathspecs ;
 int _repo ;
 int * _target ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char const*) ;
 int git_repository_index (int *,int ) ;

__attribute__((used)) static void initialize(const char *repo_name)
{
 _repo = cl_git_sandbox_init(repo_name);
 cl_git_pass(git_repository_index(&_index, _repo));

 _target = ((void*)0);

 _pathspecs.strings = ((void*)0);
 _pathspecs.count = 0;
}
