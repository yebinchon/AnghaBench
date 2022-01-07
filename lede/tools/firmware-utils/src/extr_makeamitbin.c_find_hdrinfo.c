
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdrinfo {int * name; } ;


 struct hdrinfo* hdrinfo ;
 scalar_t__ strcmp (char const*,int *) ;

struct hdrinfo *find_hdrinfo(const char *name)
{
 int n;
 for (n = 0; hdrinfo[n].name != ((void*)0); n++)
 {
  if (strcmp(name, hdrinfo[n].name) == 0)
   return &hdrinfo[n];
 }
 return ((void*)0);
}
