
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_CountChar(const char *string, char tocount)
{
 int count;

 for(count = 0; *string; string++)
 {
  if(*string == tocount)
   count++;
 }

 return count;
}
