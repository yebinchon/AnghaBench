
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workspace; int window_role; int mark; int instance; int class; int application; int title; int error; } ;
typedef TYPE_1__ Match ;


 int FREE (int ) ;
 int regex_free (int ) ;

void match_free(Match *match) {
    FREE(match->error);
    regex_free(match->title);
    regex_free(match->application);
    regex_free(match->class);
    regex_free(match->instance);
    regex_free(match->mark);
    regex_free(match->window_role);
    regex_free(match->workspace);
}
