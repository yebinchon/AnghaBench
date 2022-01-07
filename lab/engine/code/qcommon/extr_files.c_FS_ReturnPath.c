
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int FS_ReturnPath( const char *zname, char *zpath, int *depth ) {
 int len, at, newdep;

 newdep = 0;
 zpath[0] = 0;
 len = 0;
 at = 0;

 while(zname[at] != 0)
 {
  if (zname[at]=='/' || zname[at]=='\\') {
   len = at;
   newdep++;
  }
  at++;
 }
 strcpy(zpath, zname);
 zpath[len] = 0;
 *depth = newdep;

 return len;
}
