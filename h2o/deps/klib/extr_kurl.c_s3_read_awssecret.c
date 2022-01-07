
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int strcat (int ,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *s3_read_awssecret(const char *fn)
{
 char *p, *secret, buf[128], *path;
 FILE *fp;
 int l;
 if (fn == 0) {
  char *home;
  home = getenv("HOME");
  if (home == 0) return 0;
  l = strlen(home) + 12;
  path = (char*)malloc(strlen(home) + 12);
  strcat(strcpy(path, home), "/.awssecret");
 } else path = (char*)fn;
 fp = fopen(path, "r");
 if (path != fn) free(path);
 if (fp == 0) return 0;
 l = fread(buf, 1, 127, fp);
 fclose(fp);
 buf[l] = 0;
 for (p = buf; *p != 0 && *p != '\n'; ++p);
 if (*p == 0) return 0;
 *p = 0; secret = p + 1;
 for (++p; *p != 0 && *p != '\n'; ++p);
 *p = 0;
 l = p - buf + 1;
 p = (char*)malloc(l);
 memcpy(p, buf, l);
 return p;
}
