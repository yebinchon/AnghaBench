
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int tmp ;


 int die (char*) ;
 int vsnprintf (char*,int,char const*,int ) ;
 char* xmemdupz (char*,int) ;

__attribute__((used)) static int nfvasprintf(char **strp, const char *fmt, va_list ap)
{
 int len;
 char tmp[8192];

 len = vsnprintf(tmp, sizeof(tmp), fmt, ap);
 if (len < 0)
  die("Fatal: Out of memory");
 if (len >= sizeof(tmp))
  die("imap command overflow!");
 *strp = xmemdupz(tmp, len);
 return len;
}
