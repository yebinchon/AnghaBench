
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*) ;
 int draw_bars (int) ;
 int parse_mode_json (char*) ;

__attribute__((used)) static void got_mode_event(char *event) {
    DLOG("Got mode event!\n");
    parse_mode_json(event);
    draw_bars(0);
}
