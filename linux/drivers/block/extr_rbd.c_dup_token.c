
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kmemdup (char const*,size_t,int ) ;
 size_t next_token (char const**) ;

__attribute__((used)) static inline char *dup_token(const char **buf, size_t *lenp)
{
 char *dup;
 size_t len;

 len = next_token(buf);
 dup = kmemdup(*buf, len + 1, GFP_KERNEL);
 if (!dup)
  return ((void*)0);
 *(dup + len) = '\0';
 *buf += len;

 if (lenp)
  *lenp = len;

 return dup;
}
