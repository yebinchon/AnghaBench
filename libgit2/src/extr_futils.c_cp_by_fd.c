
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int FILEIO_BUFSIZE ;
 int GIT_ERROR_OS ;
 int git_error_set (int ,char*) ;
 int p_close (int) ;
 scalar_t__ p_read (int,char*,int) ;
 int p_write (int,char*,scalar_t__) ;

__attribute__((used)) static int cp_by_fd(int ifd, int ofd, bool close_fd_when_done)
{
 int error = 0;
 char buffer[FILEIO_BUFSIZE];
 ssize_t len = 0;

 while (!error && (len = p_read(ifd, buffer, sizeof(buffer))) > 0)



  error = p_write(ofd, buffer, len);

 if (len < 0) {
  git_error_set(GIT_ERROR_OS, "read error while copying file");
  error = (int)len;
 }

 if (error < 0)
  git_error_set(GIT_ERROR_OS, "write error while copying file");

 if (close_fd_when_done) {
  p_close(ifd);
  p_close(ofd);
 }

 return error;
}
