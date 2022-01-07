
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int click_events_init; } ;


 TYPE_1__ child ;
 int child_write_output () ;
 int gen ;
 int yajl_gen_array_open (int ) ;

__attribute__((used)) static void child_click_events_initialize(void) {
    if (!child.click_events_init) {
        yajl_gen_array_open(gen);
        child_write_output();
        child.click_events_init = 1;
    }
}
