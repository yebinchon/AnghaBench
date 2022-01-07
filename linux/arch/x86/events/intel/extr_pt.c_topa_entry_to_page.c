
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topa_page {int dummy; } ;
struct topa_entry {int dummy; } ;


 unsigned long PAGE_MASK ;

__attribute__((used)) static inline struct topa_page *topa_entry_to_page(struct topa_entry *te)
{
 return (struct topa_page *)((unsigned long)te & PAGE_MASK);
}
