
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long PAGE_MASK ;
 int * max (int *,int *) ;

__attribute__((used)) static inline u8 *skcipher_get_spot(u8 *start, unsigned int len)
{
 u8 *end_page = (u8 *)(((unsigned long)(start + len - 1)) & PAGE_MASK);

 return max(start, end_page);
}
