
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trypath ;
typedef int args ;


 int PATH_MAX ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int errno ;
 char* getenv (char*) ;
 int getexe (int,char*,int) ;
 int getpid () ;
 int memcpy (char*,char*,size_t) ;
 char* realpath (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strtok (char*,char*) ;
 int uv__free (char*) ;
 char* uv__strdup (char*) ;

int uv_exepath(char* buffer, size_t* size) {
  int res;
  char args[PATH_MAX];
  char abspath[PATH_MAX];
  size_t abspath_size;
  int pid;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  pid = getpid();
  res = getexe(pid, args, sizeof(args));
  if (res < 0)
    return UV_EINVAL;
  if (strchr(args, '/') != ((void*)0)) {
    if (realpath(args, abspath) != abspath)
      return UV__ERR(errno);

    abspath_size = strlen(abspath);

    *size -= 1;
    if (*size > abspath_size)
      *size = abspath_size;

    memcpy(buffer, abspath, *size);
    buffer[*size] = '\0';

    return 0;
  } else {

    char trypath[PATH_MAX];
    char* clonedpath = ((void*)0);
    char* token = ((void*)0);
    char* path = getenv("PATH");

    if (path == ((void*)0))
      return UV_EINVAL;

    clonedpath = uv__strdup(path);
    if (clonedpath == ((void*)0))
      return UV_ENOMEM;

    token = strtok(clonedpath, ":");
    while (token != ((void*)0)) {
      snprintf(trypath, sizeof(trypath) - 1, "%s/%s", token, args);
      if (realpath(trypath, abspath) == abspath) {

        if (access(abspath, X_OK) == 0) {
          abspath_size = strlen(abspath);

          *size -= 1;
          if (*size > abspath_size)
            *size = abspath_size;

          memcpy(buffer, abspath, *size);
          buffer[*size] = '\0';

          uv__free(clonedpath);
          return 0;
        }
      }
      token = strtok(((void*)0), ":");
    }
    uv__free(clonedpath);


    return UV_EINVAL;
  }
}
