
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int window_type; int window_mode; int urgent; } ;
typedef TYPE_1__ Match ;


 int UINT32_MAX ;
 int U_DONTCHECK ;
 int WM_ANY ;
 int memset (TYPE_1__*,int ,int) ;

void match_init(Match *match) {
    memset(match, 0, sizeof(Match));
    match->urgent = U_DONTCHECK;
    match->window_mode = WM_ANY;

    match->window_type = UINT32_MAX;
}
