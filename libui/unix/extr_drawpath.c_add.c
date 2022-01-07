
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pieces; scalar_t__ ended; } ;
typedef TYPE_1__ uiDrawPath ;
struct piece {int dummy; } ;


 int g_array_append_vals (int ,struct piece*,int) ;
 int uiprivUserBug (char*,TYPE_1__*) ;

__attribute__((used)) static void add(uiDrawPath *p, struct piece *piece)
{
 if (p->ended)
  uiprivUserBug("You cannot modify a uiDrawPath that has been ended. (path: %p)", p);
 g_array_append_vals(p->pieces, piece, 1);
}
