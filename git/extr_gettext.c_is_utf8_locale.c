
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ charset ;
 char* getenv (char*) ;
 int is_encoding_utf8 (scalar_t__) ;
 char* strchr (char const*,char) ;
 scalar_t__ xstrdup (char const*) ;

int is_utf8_locale(void)
{
 return is_encoding_utf8(charset);
}
