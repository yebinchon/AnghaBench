
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int PATH_MAX ;
 int errno ;
 int memcpy (char*,char*,int) ;
 int readlink (char const*,char*,size_t) ;
 int * realpath (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int uv__free (char*) ;
 char* uv__malloc (size_t) ;

ssize_t os390_readlink(const char* path, char* buf, size_t len) {
  ssize_t rlen;
  ssize_t vlen;
  ssize_t plen;
  char* delimiter;
  char old_delim;
  char* tmpbuf;
  char realpathstr[PATH_MAX + 1];

  tmpbuf = uv__malloc(len + 1);
  if (tmpbuf == ((void*)0)) {
    errno = ENOMEM;
    return -1;
  }

  rlen = readlink(path, tmpbuf, len);
  if (rlen < 0) {
    uv__free(tmpbuf);
    return rlen;
  }

  if (rlen < 3 || strncmp("/$", tmpbuf, 2) != 0) {

    memcpy(buf, tmpbuf, rlen);
    uv__free(tmpbuf);
    return rlen;
  }





  tmpbuf[rlen] = '\0';
  delimiter = strchr(tmpbuf + 2, '/');
  if (delimiter == ((void*)0))

    delimiter = strchr(tmpbuf + 2, '\0');


  old_delim = *delimiter;
  *delimiter = '\0';
  if (realpath(tmpbuf, realpathstr) == ((void*)0)) {
    uv__free(tmpbuf);
    return -1;
  }


  realpathstr[PATH_MAX] = '\0';


  *delimiter = old_delim;
  plen = strlen(delimiter);
  vlen = strlen(realpathstr);
  rlen = plen + vlen;
  if (rlen > len) {
    uv__free(tmpbuf);
    errno = ENAMETOOLONG;
    return -1;
  }
  memcpy(buf, realpathstr, vlen);
  memcpy(buf + vlen, delimiter, plen);


  uv__free(tmpbuf);

  return rlen;
}
