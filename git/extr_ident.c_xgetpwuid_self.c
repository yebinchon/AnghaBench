
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; char* pw_gecos; } ;


 scalar_t__ errno ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;

__attribute__((used)) static struct passwd *xgetpwuid_self(int *is_bogus)
{
 struct passwd *pw;

 errno = 0;
 pw = getpwuid(getuid());
 if (!pw) {
  static struct passwd fallback;
  fallback.pw_name = "unknown";

  fallback.pw_gecos = "Unknown";

  pw = &fallback;
  if (is_bogus)
   *is_bogus = 1;
 }
 return pw;
}
