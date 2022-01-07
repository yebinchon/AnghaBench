
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISREG (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int is_file(const char *url)
{
 struct stat buf;
 if (stat(url, &buf))
  return 0;
 return S_ISREG(buf.st_mode);
}
