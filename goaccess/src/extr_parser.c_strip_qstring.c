
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static void
strip_qstring (char *req)
{
  char *qmark;
  if ((qmark = strchr (req, '?')) != ((void*)0)) {
    if ((qmark - req) > 0)
      *qmark = '\0';
  }
}
