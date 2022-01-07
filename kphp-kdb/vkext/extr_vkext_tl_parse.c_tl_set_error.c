
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 scalar_t__ strdup (char const*) ;
 TYPE_1__ tl ;

void tl_set_error (const char *error) {
  if (tl.error) { return; }
  tl.error = strdup (error);
}
