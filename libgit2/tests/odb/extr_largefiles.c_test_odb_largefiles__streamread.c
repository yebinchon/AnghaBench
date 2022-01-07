
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hdr ;
typedef int git_oid ;
typedef int git_odb_stream ;
typedef int git_object_t ;
typedef int git_hash_ctx ;


 int GIT_OBJECT_BLOB ;
 int LARGEFILE_SIZE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_sz (int ,size_t) ;
 int cl_git_pass (int ) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,char*,int) ;
 int git_odb__format_object_header (size_t*,char*,int,size_t,int ) ;
 int git_odb_open_rstream (int **,size_t*,int *,int ,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_read (int *,char*,int) ;
 int odb ;
 int writefile (int *) ;

void test_odb_largefiles__streamread(void)
{
 git_oid oid, read_oid;
 git_odb_stream *stream;
 char buf[10240];
 char hdr[64];
 size_t len, hdr_len, total = 0;
 git_hash_ctx hash;
 git_object_t type;
 int ret;


 cl_skip();


 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE") ||
  !cl_is_env_set("GITTEST_SLOW"))
  cl_skip();

 writefile(&oid);

 cl_git_pass(git_odb_open_rstream(&stream, &len, &type, odb, &oid));

 cl_assert_equal_sz(LARGEFILE_SIZE, len);
 cl_assert_equal_i(GIT_OBJECT_BLOB, type);

 cl_git_pass(git_hash_ctx_init(&hash));
 cl_git_pass(git_odb__format_object_header(&hdr_len, hdr, sizeof(hdr), len, type));

 cl_git_pass(git_hash_update(&hash, hdr, hdr_len));

 while ((ret = git_odb_stream_read(stream, buf, 10240)) > 0) {
  cl_git_pass(git_hash_update(&hash, buf, ret));
  total += ret;
 }

 cl_assert_equal_sz(LARGEFILE_SIZE, total);

 git_hash_final(&read_oid, &hash);

 cl_assert_equal_oid(&oid, &read_oid);

 git_hash_ctx_cleanup(&hash);
 git_odb_stream_free(stream);
}
