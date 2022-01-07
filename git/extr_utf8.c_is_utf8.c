
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_width (char const**,int *) ;

int is_utf8(const char *text)
{
 while (*text) {
  if (*text == '\n' || *text == '\t' || *text == '\r') {
   text++;
   continue;
  }
  utf8_width(&text, ((void*)0));
  if (!text)
   return 0;
 }
 return 1;
}
