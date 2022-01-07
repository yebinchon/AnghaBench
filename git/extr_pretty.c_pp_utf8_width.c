
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_width (char const**,size_t*) ;

__attribute__((used)) static int pp_utf8_width(const char *start, const char *end)
{
 int width = 0;
 size_t remain = end - start;

 while (remain) {
  int n = utf8_width(&start, &remain);
  if (n < 0 || !start)
   return -1;
  width += n;
 }
 return width;
}
