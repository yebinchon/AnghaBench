
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ errnum; scalar_t__ error; } ;


 int free (scalar_t__) ;
 TYPE_1__ tl ;

void tl_parse_init (void) {
  if (tl.error) {
    free (tl.error);
    tl.error = 0;
  }
  tl.errnum = 0;
}
