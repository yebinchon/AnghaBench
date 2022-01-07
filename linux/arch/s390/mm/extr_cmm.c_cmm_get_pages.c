
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long cmm_pages ;

__attribute__((used)) static long cmm_get_pages(void)
{
 return cmm_pages;
}
