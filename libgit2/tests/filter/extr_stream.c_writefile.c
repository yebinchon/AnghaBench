
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int CHUNKSIZE ;
 TYPE_1__ GIT_BUF_INIT ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int p_close (int) ;
 int p_open (int ,int,int) ;
 int p_write (int,char*,int) ;

__attribute__((used)) static void writefile(const char *filename, size_t numchunks)
{
 git_buf path = GIT_BUF_INIT;
 char buf[CHUNKSIZE];
 size_t i = 0, j = 0;
 int fd;

 cl_git_pass(git_buf_joinpath(&path, "empty_standard_repo", filename));

 fd = p_open(path.ptr, O_RDWR|O_CREAT, 0666);
 cl_assert(fd >= 0);

 for (i = 0; i < numchunks; i++) {
  for (j = 0; j < CHUNKSIZE; j++) {
   buf[j] = i % 256;
  }

  cl_git_pass(p_write(fd, buf, CHUNKSIZE));
 }
 p_close(fd);

 git_buf_dispose(&path);
}
