
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ikcpcb ;
typedef int IKCPSEG ;


 int ikcp_free (int *) ;

__attribute__((used)) static void ikcp_segment_delete(ikcpcb *kcp, IKCPSEG *seg)
{
 ikcp_free(seg);
}
