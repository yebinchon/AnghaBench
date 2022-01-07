
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog20; } ;
struct vsie_page {TYPE_1__ scb_s; } ;


 int PROG_REQUEST ;
 int atomic_andnot (int ,int *) ;

__attribute__((used)) static void prefix_mapped(struct vsie_page *vsie_page)
{
 atomic_andnot(PROG_REQUEST, &vsie_page->scb_s.prog20);
}
