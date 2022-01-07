
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 scalar_t__ starts_with (char*,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int count_messages(struct strbuf *all_msgs)
{
 int count = 0;
 char *p = all_msgs->buf;

 while (1) {
  if (starts_with(p, "From ")) {
   p = strstr(p+5, "\nFrom: ");
   if (!p) break;
   p = strstr(p+7, "\nDate: ");
   if (!p) break;
   p = strstr(p+7, "\nSubject: ");
   if (!p) break;
   p += 10;
   count++;
  }
  p = strstr(p+5, "\nFrom ");
  if (!p)
   break;
  p++;
 }
 return count;
}
