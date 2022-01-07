
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_5__ {int path; int stamp; } ;
typedef TYPE_1__ git_sortedcache ;
typedef int git_buf ;


 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OS ;
 int git__is_sizet (scalar_t__) ;
 int git_error_set (int ,char*) ;
 int git_futils_filestamp_check (int *,int ) ;
 int git_futils_open_ro (int ) ;
 int git_futils_readbuffer_fd (int *,int,size_t) ;
 int git_sortedcache_wlock (TYPE_1__*) ;
 int git_sortedcache_wunlock (TYPE_1__*) ;
 int p_close (int) ;
 scalar_t__ p_fstat (int,struct stat*) ;

int git_sortedcache_lockandload(git_sortedcache *sc, git_buf *buf)
{
 int error, fd;
 struct stat st;

 if ((error = git_sortedcache_wlock(sc)) < 0)
  return error;

 if ((error = git_futils_filestamp_check(&sc->stamp, sc->path)) <= 0)
  goto unlock;

 if ((fd = git_futils_open_ro(sc->path)) < 0) {
  error = fd;
  goto unlock;
 }

 if (p_fstat(fd, &st) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to stat file");
  error = -1;
  (void)p_close(fd);
  goto unlock;
 }

 if (!git__is_sizet(st.st_size)) {
  git_error_set(GIT_ERROR_INVALID, "unable to load file larger than size_t");
  error = -1;
  (void)p_close(fd);
  goto unlock;
 }

 if (buf)
  error = git_futils_readbuffer_fd(buf, fd, (size_t)st.st_size);

 (void)p_close(fd);

 if (error < 0)
  goto unlock;

 return 1;

unlock:
 git_sortedcache_wunlock(sc);
 return error;
}
