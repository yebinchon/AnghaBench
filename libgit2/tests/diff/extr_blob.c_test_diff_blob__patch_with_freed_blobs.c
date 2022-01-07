
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_oid ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int BLOB_DIFF ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup_prefix (int **,int ,int *,int) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_oid_fromstrn (int *,char*,int) ;
 int git_patch_free (int *) ;
 int git_patch_from_blobs (int **,int *,int *,int *,int *,int *) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

void test_diff_blob__patch_with_freed_blobs(void)
{
 git_oid a_oid, b_oid;
 git_blob *a, *b;
 git_patch *p;
 git_buf buf = GIT_BUF_INIT;


 cl_git_pass(git_oid_fromstrn(&a_oid, "45141a79", 8));
 cl_git_pass(git_blob_lookup_prefix(&a, g_repo, &a_oid, 4));

 cl_git_pass(git_oid_fromstrn(&b_oid, "4d713dc4", 8));
 cl_git_pass(git_blob_lookup_prefix(&b, g_repo, &b_oid, 4));

 cl_git_pass(git_patch_from_blobs(&p, a, ((void*)0), b, ((void*)0), ((void*)0)));

 git_blob_free(a);
 git_blob_free(b);

 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(buf.ptr, BLOB_DIFF);

 git_patch_free(p);
 git_buf_dispose(&buf);
}
