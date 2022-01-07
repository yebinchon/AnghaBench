
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int git_filebuf ;


 int WRITE_BUFFER_SIZE ;
 int git_filebuf_open_withsize (int *,char const*,int,int ,int ) ;

int git_filebuf_open(git_filebuf *file, const char *path, int flags, mode_t mode)
{
 return git_filebuf_open_withsize(file, path, flags, mode, WRITE_BUFFER_SIZE);
}
