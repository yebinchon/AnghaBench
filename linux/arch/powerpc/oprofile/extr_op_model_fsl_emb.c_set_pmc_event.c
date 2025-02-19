
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMLCA_EVENT_MASK ;
 int PMLCA_EVENT_SHIFT ;
 int get_pmlca (int) ;
 int set_pmlca (int,int) ;

__attribute__((used)) static void set_pmc_event(int ctr, int event)
{
 u32 pmlca;

 pmlca = get_pmlca(ctr);

 pmlca = (pmlca & ~PMLCA_EVENT_MASK) |
  ((event << PMLCA_EVENT_SHIFT) &
   PMLCA_EVENT_MASK);

 set_pmlca(ctr, pmlca);
}
