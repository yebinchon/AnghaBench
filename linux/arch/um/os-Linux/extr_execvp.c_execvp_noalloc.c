
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int execv (char const*,char* const*) ;
 char* getenv (char*) ;
 char* memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int execvp_noalloc(char *buf, const char *file, char *const argv[])
{
 if (*file == '\0') {
  return -132;
 }

 if (strchr (file, '/') != ((void*)0)) {

  execv(file, argv);
 } else {
  int got_eacces;
  size_t len, pathlen;
  char *name, *p;
  char *path = getenv("PATH");
  if (path == ((void*)0))
   path = ":/bin:/usr/bin";

  len = strlen(file) + 1;
  pathlen = strlen(path);

  name = memcpy(buf + pathlen + 1, file, len);

  *--name = '/';

  got_eacces = 0;
  p = path;
  do {
   char *startp;

   path = p;


   p = strchr(path, ':');
   if (!p)
    p = strchr(path, '\0');

   if (p == path)


    startp = name + 1;
   else
    startp = memcpy(name - (p - path), path, p - path);


   execv(startp, argv);






   switch (errno) {
    case 134:



     got_eacces = 1;
    case 132:
    case 129:
    case 130:



    case 133:
    case 128:



    case 131:




     break;

    default:



     return -errno;
   }
  } while (*p++ != '\0');


  if (got_eacces)


   return -134;
 }


 return -errno;
}
