
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int evutil_inet_pton (int,char const*,void*) ;
 int free (char*) ;
 unsigned int if_nametoindex (char*) ;
 char* mm_strdup (char const*) ;
 char* strchr (char const*,char) ;
 unsigned int strtoul (char*,char**,int) ;

int
evutil_inet_pton_scope(int af, const char *src, void *dst, unsigned *indexp)
{
 int r;
 unsigned if_index;
 char *check, *cp, *tmp_src;

 *indexp = 0;


 if (af != AF_INET6)
  return evutil_inet_pton(af, src, dst);

 cp = strchr(src, '%');


 if (cp == ((void*)0))
  return evutil_inet_pton(af, src, dst);

 if_index = if_nametoindex(cp + 1);
 if (if_index == 0) {

  if_index = strtoul(cp + 1, &check, 10);
  if (check[0] != '\0')
   return 0;
 }
 *indexp = if_index;
 tmp_src = mm_strdup(src);
 cp = strchr(tmp_src, '%');
 *cp = '\0';
 r = evutil_inet_pton(af, tmp_src, dst);
 free(tmp_src);
 return r;
}
