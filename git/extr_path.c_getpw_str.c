
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int free (char*) ;
 struct passwd* getpwnam (char*) ;
 char* xmemdupz (char const*,size_t) ;

__attribute__((used)) static struct passwd *getpw_str(const char *username, size_t len)
{
 struct passwd *pw;
 char *username_z = xmemdupz(username, len);
 pw = getpwnam(username_z);
 free(username_z);
 return pw;
}
