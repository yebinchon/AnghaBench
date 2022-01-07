
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 char const* xmemdupz (char const*,int) ;
 char const* xstrdup (char*) ;

__attribute__((used)) static const char *copy_email(const char *buf)
{
 const char *email = strchr(buf, '<');
 const char *eoemail;
 if (!email)
  return xstrdup("");
 eoemail = strchr(email, '>');
 if (!eoemail)
  return xstrdup("");
 return xmemdupz(email, eoemail + 1 - email);
}
