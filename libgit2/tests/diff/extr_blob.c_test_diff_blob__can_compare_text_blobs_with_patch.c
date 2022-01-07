
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_oid ;
typedef int git_blob ;


 int assert_patch_matches_blobs (int *,int *,int *,int,int,int,int,int,int) ;
 int cl_git_pass (int ) ;
 int * d ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup_prefix (int **,int ,int *,int) ;
 int git_oid_fromstrn (int *,char*,int) ;
 int git_patch_free (int *) ;
 int git_patch_from_blobs (int **,int *,int *,int *,int *,int *) ;
 int opts ;

void test_diff_blob__can_compare_text_blobs_with_patch(void)
{
 git_blob *a, *b, *c;
 git_oid a_oid, b_oid, c_oid;
 git_patch *p;


 cl_git_pass(git_oid_fromstrn(&a_oid, "45141a79", 8));
 cl_git_pass(git_blob_lookup_prefix(&a, g_repo, &a_oid, 8));


 cl_git_pass(git_oid_fromstrn(&b_oid, "4d713dc4", 8));
 cl_git_pass(git_blob_lookup_prefix(&b, g_repo, &b_oid, 8));


 cl_git_pass(git_oid_fromstrn(&c_oid, "c96bbb2c2557a832", 16));
 cl_git_pass(git_blob_lookup_prefix(&c, g_repo, &c_oid, 16));




 cl_git_pass(git_patch_from_blobs(&p, a, ((void*)0), b, ((void*)0), &opts));
 assert_patch_matches_blobs(p, a, b, 1, 6, 0, 1, 5, 0);
 git_patch_free(p);


 cl_git_pass(git_patch_from_blobs(&p, b, ((void*)0), c, ((void*)0), &opts));
 assert_patch_matches_blobs(p, b, c, 1, 15, 0, 3, 9, 3);
 git_patch_free(p);


 cl_git_pass(git_patch_from_blobs(&p, a, ((void*)0), c, ((void*)0), &opts));
 assert_patch_matches_blobs(p, a, c, 1, 13, 0, 0, 12, 1);
 git_patch_free(p);


 cl_git_pass(git_patch_from_blobs(&p, c, ((void*)0), d, ((void*)0), &opts));
 assert_patch_matches_blobs(p, c, d, 2, 5, 9, 4, 6, 4);
 git_patch_free(p);

 git_blob_free(a);
 git_blob_free(b);
 git_blob_free(c);
}
