
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long MAX_P2M_PFN ;
 unsigned long P2M_MID_PER_PAGE ;
 unsigned long P2M_PER_PAGE ;

__attribute__((used)) static inline unsigned p2m_top_index(unsigned long pfn)
{
 BUG_ON(pfn >= MAX_P2M_PFN);
 return pfn / (P2M_MID_PER_PAGE * P2M_PER_PAGE);
}
