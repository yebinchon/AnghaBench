
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {char* pack_name; } ;


 char* strrchr (char*,char) ;

const char *pack_basename(struct packed_git *p)
{
 const char *ret = strrchr(p->pack_name, '/');
 if (ret)
  ret = ret + 1;
 else
  ret = p->pack_name;
 return ret;
}
