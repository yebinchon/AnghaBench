
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long long memparse (char*,char**) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
parse_memmap(char *p, unsigned long long *start, unsigned long long *size)
{
 char *oldp;

 if (!p)
  return -EINVAL;


 if (!strncmp(p, "exactmap", 8))
  return -EINVAL;

 oldp = p;
 *size = memparse(p, &p);
 if (p == oldp)
  return -EINVAL;

 switch (*p) {
 case '#':
 case '$':
 case '!':
  *start = memparse(p + 1, &p);
  return 0;
 case '@':

  *size = 0;

 default:





  *start = 0;
  return 0;
 }

 return -EINVAL;
}
