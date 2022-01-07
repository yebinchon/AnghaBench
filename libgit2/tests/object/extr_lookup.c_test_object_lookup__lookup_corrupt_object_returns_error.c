
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_7__ {int* ptr; size_t size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_COMMIT ;
 int O_RDWR ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_futils_readbuffer (TYPE_1__*,int*) ;
 int git_futils_writebuffer (TYPE_1__*,int*,int ,int) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_repository_path (int ) ;

void test_object_lookup__lookup_corrupt_object_returns_error(void)
{
 const char *commit = "8e73b769e97678d684b809b163bebdae2911720f",
       *file = "objects/8e/73b769e97678d684b809b163bebdae2911720f";
 git_buf path = GIT_BUF_INIT, contents = GIT_BUF_INIT;
 git_oid oid;
 git_object *object;
 size_t i;

 cl_git_pass(git_oid_fromstr(&oid, commit));
 cl_git_pass(git_buf_joinpath(&path, git_repository_path(g_repo), file));
 cl_git_pass(git_futils_readbuffer(&contents, path.ptr));


 for (i = 0; i < contents.size; i++) {
  contents.ptr[i] ^= 0x1;
  cl_git_pass(git_futils_writebuffer(&contents, path.ptr, O_RDWR, 0644));
  cl_git_fail(git_object_lookup(&object, g_repo, &oid, GIT_OBJECT_COMMIT));
  contents.ptr[i] ^= 0x1;
 }


 cl_git_pass(git_futils_writebuffer(&contents, path.ptr, O_RDWR, 0644));
 cl_git_pass(git_object_lookup(&object, g_repo, &oid, GIT_OBJECT_COMMIT));

 git_object_free(object);
 git_buf_dispose(&path);
 git_buf_dispose(&contents);
}
