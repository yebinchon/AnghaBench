
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_oid ;
typedef int git_hash_ctx ;


 int O_RDONLY ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,scalar_t__) ;
 int cl_git_pass (int ) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,char*,size_t) ;
 int p_close (int) ;
 int p_open (char const*,int ) ;
 scalar_t__ p_read (int,char*,int) ;

__attribute__((used)) static int sha1_file(git_oid *oid, const char *filename)
{
 git_hash_ctx ctx;
 char buf[2048];
 int fd, ret;
 ssize_t read_len;

 fd = p_open(filename, O_RDONLY);
 cl_assert(fd >= 0);

 cl_git_pass(git_hash_ctx_init(&ctx));

 while ((read_len = p_read(fd, buf, 2048)) > 0)
  cl_git_pass(git_hash_update(&ctx, buf, (size_t)read_len));

 cl_assert_equal_i(0, read_len);
 p_close(fd);

 ret = git_hash_final(oid, &ctx);
 git_hash_ctx_cleanup(&ctx);

 return ret;
}
