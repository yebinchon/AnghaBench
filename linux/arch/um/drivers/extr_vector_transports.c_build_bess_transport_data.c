
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {scalar_t__ rx_header_size; scalar_t__ header_size; int * verify_header; int * form_header; } ;



__attribute__((used)) static int build_bess_transport_data(struct vector_private *vp)
{
 vp->form_header = ((void*)0);
 vp->verify_header = ((void*)0);
 vp->header_size = 0;
 vp->rx_header_size = 0;
 return 0;
}
