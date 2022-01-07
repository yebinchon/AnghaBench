
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;



__attribute__((used)) static inline void set_page_memtype(struct page *pg,
        enum page_cache_mode memtype)
{
}
