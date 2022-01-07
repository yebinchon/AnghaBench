
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; int path; } ;
typedef TYPE_1__ uv_fs_t ;
struct stat {int st_size; int st_mode; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int S_ISLNK (int ) ;
 int errno ;
 int lstat (int ,struct stat*) ;
 int os390_readlink (int ,char*,int) ;
 int readlink (int ,char*,int) ;
 int uv__free (char*) ;
 int uv__fs_pathmax_size (int ) ;
 char* uv__malloc (int) ;
 char* uv__realloc (char*,int) ;

__attribute__((used)) static ssize_t uv__fs_readlink(uv_fs_t* req) {
  ssize_t maxlen;
  ssize_t len;
  char* buf;
  char* newbuf;





  struct stat st;
  int ret;
  ret = lstat(req->path, &st);
  if (ret != 0)
    return -1;
  if (!S_ISLNK(st.st_mode)) {
    errno = EINVAL;
    return -1;
  }

  maxlen = st.st_size;



  if (maxlen == 0)
    maxlen = uv__fs_pathmax_size(req->path);


  buf = uv__malloc(maxlen);

  if (buf == ((void*)0)) {
    errno = ENOMEM;
    return -1;
  }




  len = readlink(req->path, buf, maxlen);


  if (len == -1) {
    uv__free(buf);
    return -1;
  }


  if (len == maxlen) {
    newbuf = uv__realloc(buf, len + 1);

    if (newbuf == ((void*)0)) {
      uv__free(buf);
      return -1;
    }

    buf = newbuf;
  }

  buf[len] = '\0';
  req->ptr = buf;

  return 0;
}
