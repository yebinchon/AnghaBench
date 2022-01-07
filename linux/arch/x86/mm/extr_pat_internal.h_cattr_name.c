
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
__attribute__((used)) static inline char *cattr_name(enum page_cache_mode pcm)
{
 switch (pcm) {
 case 133: return "uncached";
 case 132: return "uncached-minus";
 case 131: return "write-back";
 case 130: return "write-combining";
 case 128: return "write-through";
 case 129: return "write-protected";
 default: return "broken";
 }
}
