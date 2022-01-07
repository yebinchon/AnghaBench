
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dummy; } ;


 int free (struct tlb*) ;

void tlb_free(struct tlb *tlb) {
    free(tlb);
}
