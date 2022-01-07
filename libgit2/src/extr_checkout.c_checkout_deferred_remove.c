
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char const git_repository ;
struct TYPE_3__ {int target_directory; } ;
struct TYPE_4__ {TYPE_1__ opts; } ;


 int GIT_ENOTFOUND ;
 int GIT_RMDIR_EMPTY_PARENTS ;
 int GIT_UNUSED (char const*) ;
 int assert (int) ;
 TYPE_2__* data ;
 int git_error_clear () ;
 int git_futils_rmdir_r (char const*,int ,int ) ;

__attribute__((used)) static int checkout_deferred_remove(git_repository *repo, const char *path)
{
 GIT_UNUSED(repo);
 GIT_UNUSED(path);
 assert(0);
 return 0;

}
