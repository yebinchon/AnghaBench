
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_hash_ctx ;


 int bye_id ;
 int bye_text ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_init (int *) ;
 int git_hash_update (int *,int ,int ) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int hello_id ;
 int hello_text ;
 int strlen (int ) ;

void test_object_raw_hash__hash_by_blocks(void)
{
 git_hash_ctx ctx;
 git_oid id1, id2;

 cl_git_pass(git_hash_ctx_init(&ctx));


 cl_git_pass(git_hash_update(&ctx, hello_text, strlen(hello_text)));
 cl_git_pass(git_hash_final(&id2, &ctx));
 cl_git_pass(git_oid_fromstr(&id1, hello_id));
 cl_assert(git_oid_cmp(&id1, &id2) == 0);


 cl_git_pass(git_hash_init(&ctx));
 cl_git_pass(git_hash_update(&ctx, bye_text, strlen(bye_text)));
 cl_git_pass(git_hash_final(&id2, &ctx));
 cl_git_pass(git_oid_fromstr(&id1, bye_id));
 cl_assert(git_oid_cmp(&id1, &id2) == 0);

 git_hash_ctx_cleanup(&ctx);
}
