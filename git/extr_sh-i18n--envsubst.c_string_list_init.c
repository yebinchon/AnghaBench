
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nitems_max; scalar_t__ nitems; int * item; } ;
typedef TYPE_1__ string_list_ty ;



__attribute__((used)) static inline void
string_list_init (string_list_ty *slp)
{
  slp->item = ((void*)0);
  slp->nitems = 0;
  slp->nitems_max = 0;
}
