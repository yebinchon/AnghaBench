
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 int memcmp (char const*,char*,int) ;

__attribute__((used)) static int is_scissors_line(const char *line)
{
 const char *c;
 int scissors = 0, gap = 0;
 const char *first_nonblank = ((void*)0), *last_nonblank = ((void*)0);
 int visible, perforation = 0, in_perforation = 0;

 for (c = line; *c; c++) {
  if (isspace(*c)) {
   if (in_perforation) {
    perforation++;
    gap++;
   }
   continue;
  }
  last_nonblank = c;
  if (first_nonblank == ((void*)0))
   first_nonblank = c;
  if (*c == '-') {
   in_perforation = 1;
   perforation++;
   continue;
  }
  if ((!memcmp(c, ">8", 2) || !memcmp(c, "8<", 2) ||
       !memcmp(c, ">%", 2) || !memcmp(c, "%<", 2))) {
   in_perforation = 1;
   perforation += 2;
   scissors += 2;
   c++;
   continue;
  }
  in_perforation = 0;
 }
 if (first_nonblank && last_nonblank)
  visible = last_nonblank - first_nonblank + 1;
 else
  visible = 0;
 return (scissors && 8 <= visible &&
  visible < perforation * 3 &&
  gap * 2 < perforation);
}
