
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CMO_PageSize ;

__attribute__((used)) static inline unsigned long cmo_get_page_size(void)
{
 return CMO_PageSize;
}
