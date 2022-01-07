
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region {int dummy; } ;
struct histindex {scalar_t__ cnt; scalar_t__ max_chain_length; scalar_t__ has_common; } ;


 unsigned int LINE_END (int) ;
 scalar_t__ scanA (struct histindex*,unsigned int,unsigned int) ;
 unsigned int try_lcs (struct histindex*,struct region*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int find_lcs(
 struct histindex *index, struct region *lcs,
 unsigned int line1, unsigned int count1,
 unsigned int line2, unsigned int count2)
{
 unsigned int b_ptr;

 if (scanA(index, line1, count1))
  return -1;

 index->cnt = index->max_chain_length + 1;

 for (b_ptr = line2; b_ptr <= LINE_END(2); )
  b_ptr = try_lcs(index, lcs, b_ptr, line1, count1, line2, count2);

 return index->has_common && index->max_chain_length < index->cnt;
}
