
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 int git_treebuilder_write_with_buffer (int *,int *,int *) ;

int git_treebuilder_write(git_oid *oid, git_treebuilder *bld)
{
 int error;
 git_buf buffer = GIT_BUF_INIT;

 error = git_treebuilder_write_with_buffer(oid, bld, &buffer);

 git_buf_dispose(&buffer);
 return error;
}
