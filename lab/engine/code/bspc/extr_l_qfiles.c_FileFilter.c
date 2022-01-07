
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* StringContains (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ toupper (char) ;

int FileFilter(char *filter, char *filename, int casesensitive)
{
 char buf[1024];
 char *ptr;
 int i, found;

 while(*filter)
 {
  if (*filter == '*')
  {
   filter++;
   for (i = 0; *filter; i++)
   {
    if (*filter == '*' || *filter == '?') break;
    buf[i] = *filter;
    filter++;
   }
   buf[i] = '\0';
   if (strlen(buf))
   {
    ptr = StringContains(filename, buf, casesensitive);
    if (!ptr) return 0;
    filename = ptr + strlen(buf);
   }
  }
  else if (*filter == '?')
  {
   filter++;
   filename++;
  }
  else if (*filter == '[' && *(filter+1) == '[')
  {
   filter++;
  }
  else if (*filter == '[')
  {
   filter++;
   found = 0;
   while(*filter && !found)
   {
    if (*filter == ']' && *(filter+1) != ']') break;
    if (*(filter+1) == '-' && *(filter+2) && (*(filter+2) != ']' || *(filter+3) == ']'))
    {
     if (casesensitive)
     {
      if (*filename >= *filter && *filename <= *(filter+2)) found = 1;
     }
     else
     {
      if (toupper(*filename) >= toupper(*filter) &&
       toupper(*filename) <= toupper(*(filter+2))) found = 1;
     }
     filter += 3;
    }
    else
    {
     if (casesensitive)
     {
      if (*filter == *filename) found = 1;
     }
     else
     {
      if (toupper(*filter) == toupper(*filename)) found = 1;
     }
     filter++;
    }
   }
   if (!found) return 0;
   while(*filter)
   {
    if (*filter == ']' && *(filter+1) != ']') break;
    filter++;
   }
   filter++;
   filename++;
  }
  else
  {
   if (casesensitive)
   {
    if (*filter != *filename) return 0;
   }
   else
   {
    if (toupper(*filter) != toupper(*filename)) return 0;
   }
   filter++;
   filename++;
  }
 }
 return 1;
}
