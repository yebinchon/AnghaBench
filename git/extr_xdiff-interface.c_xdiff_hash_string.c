
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long xdl_hash_record (char const**,char const*,long) ;

unsigned long xdiff_hash_string(const char *s, size_t len, long flags)
{
 return xdl_hash_record(&s, s + len, flags);
}
