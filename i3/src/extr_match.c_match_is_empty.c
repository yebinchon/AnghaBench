
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ urgent; scalar_t__ id; scalar_t__ window_type; scalar_t__ dock; scalar_t__ window_mode; int * con_id; int * workspace; int * window_role; int * instance; int * class; int * application; int * mark; int * title; } ;
typedef TYPE_1__ Match ;


 scalar_t__ M_NODOCK ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ U_DONTCHECK ;
 scalar_t__ WM_ANY ;
 scalar_t__ XCB_NONE ;

bool match_is_empty(Match *match) {



    return (match->title == ((void*)0) &&
            match->mark == ((void*)0) &&
            match->application == ((void*)0) &&
            match->class == ((void*)0) &&
            match->instance == ((void*)0) &&
            match->window_role == ((void*)0) &&
            match->workspace == ((void*)0) &&
            match->urgent == U_DONTCHECK &&
            match->id == XCB_NONE &&
            match->window_type == UINT32_MAX &&
            match->con_id == ((void*)0) &&
            match->dock == M_NODOCK &&
            match->window_mode == WM_ANY);
}
