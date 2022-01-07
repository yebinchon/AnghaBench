
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int nx_huge_pages ;

__attribute__((used)) static bool is_nx_huge_page_enabled(void)
{
 return READ_ONCE(nx_huge_pages);
}
