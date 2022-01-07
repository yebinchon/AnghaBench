
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ icptcode; } ;
struct vsie_page {TYPE_1__ scb_s; } ;



__attribute__((used)) static inline void clear_vsie_icpt(struct vsie_page *vsie_page)
{
 vsie_page->scb_s.icptcode = 0;
}
