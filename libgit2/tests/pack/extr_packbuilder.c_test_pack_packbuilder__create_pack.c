
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_indexer_progress ;
typedef int git_hash_ctx ;
struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OID_HEXSZ ;
 int _indexer ;
 int _packbuilder ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int feed_indexer ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,int ,int ) ;
 int git_indexer_commit (int ,int *) ;
 int * git_indexer_hash (int ) ;
 int git_indexer_new (int *,char*,int ,int *,int *) ;
 int git_oid_fmt (char*,int *) ;
 int git_packbuilder_foreach (int ,int ,int *) ;
 int seed_packbuilder () ;

void test_pack_packbuilder__create_pack(void)
{
 git_indexer_progress stats;
 git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;
 git_hash_ctx ctx;
 git_oid hash;
 char hex[GIT_OID_HEXSZ+1]; hex[GIT_OID_HEXSZ] = '\0';

 seed_packbuilder();

 cl_git_pass(git_indexer_new(&_indexer, ".", 0, ((void*)0), ((void*)0)));
 cl_git_pass(git_packbuilder_foreach(_packbuilder, feed_indexer, &stats));
 cl_git_pass(git_indexer_commit(_indexer, &stats));

 git_oid_fmt(hex, git_indexer_hash(_indexer));
 git_buf_printf(&path, "pack-%s.pack", hex);
 cl_git_pass(git_futils_readbuffer(&buf, git_buf_cstr(&path)));

 cl_git_pass(git_hash_ctx_init(&ctx));
 cl_git_pass(git_hash_update(&ctx, buf.ptr, buf.size));
 cl_git_pass(git_hash_final(&hash, &ctx));
 git_hash_ctx_cleanup(&ctx);

 git_buf_dispose(&path);
 git_buf_dispose(&buf);

 git_oid_fmt(hex, &hash);

 cl_assert_equal_s(hex, "5d410bdf97cf896f9007681b92868471d636954b");
}
