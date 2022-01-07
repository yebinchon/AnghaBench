
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int simple_strtoul (char*,char**,int) ;
 char* skip_spaces (char*) ;

__attribute__((used)) static inline int debug_get_uint(char *buf)
{
 int rc;

 buf = skip_spaces(buf);
 rc = simple_strtoul(buf, &buf, 10);
 if (*buf)
  rc = -EINVAL;
 return rc;
}
