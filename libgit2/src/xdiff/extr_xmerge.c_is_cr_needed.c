
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i2; scalar_t__ i1; } ;
typedef TYPE_1__ xdmerge_t ;
struct TYPE_7__ {int xdf1; int xdf2; } ;
typedef TYPE_2__ xdfenv_t ;


 int is_eol_crlf (int *,scalar_t__) ;

__attribute__((used)) static int is_cr_needed(xdfenv_t *xe1, xdfenv_t *xe2, xdmerge_t *m)
{
 int needs_cr;


 needs_cr = is_eol_crlf(&xe1->xdf2, m->i1 ? m->i1 - 1 : 0);
 if (needs_cr)
  needs_cr = is_eol_crlf(&xe2->xdf2, m->i2 ? m->i2 - 1 : 0);

 if (needs_cr)
  needs_cr = is_eol_crlf(&xe1->xdf1, 0);

 return needs_cr < 0 ? 0 : needs_cr;
}
