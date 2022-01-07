
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ikcpcb ;
typedef int IKCPSEG ;


 scalar_t__ ikcp_malloc (int) ;

__attribute__((used)) static IKCPSEG* ikcp_segment_new(ikcpcb *kcp, int size)
{
 return (IKCPSEG*)ikcp_malloc(sizeof(IKCPSEG) + size);
}
