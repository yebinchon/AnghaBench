
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {scalar_t__ len; int * s; } ;


 int free (int *) ;

void str_free(struct gstr *gs)
{
 if (gs->s)
  free(gs->s);
 gs->s = ((void*)0);
 gs->len = 0;
}
