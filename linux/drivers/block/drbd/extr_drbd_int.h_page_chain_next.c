
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ page_private (struct page*) ;

__attribute__((used)) static inline struct page *page_chain_next(struct page *page)
{
 return (struct page *)page_private(page);
}
