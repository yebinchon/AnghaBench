
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long P2M_MID_PER_PAGE ;
 unsigned long P2M_PER_PAGE ;

__attribute__((used)) static inline unsigned p2m_mid_index(unsigned long pfn)
{
 return (pfn / P2M_PER_PAGE) % P2M_MID_PER_PAGE;
}
