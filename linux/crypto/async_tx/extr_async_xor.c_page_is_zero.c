
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int memchr_inv (scalar_t__,int ,size_t) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static int page_is_zero(struct page *p, unsigned int offset, size_t len)
{
 return !memchr_inv(page_address(p) + offset, 0, len);
}
