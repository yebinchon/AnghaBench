
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xcb_window_t ;
struct sync_state {long long rnd; scalar_t__ window; int last_key; } ;


 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int _sync_json_int(void *extra, long long val) {
    struct sync_state *state = extra;
    if (strcasecmp(state->last_key, "rnd") == 0) {
        state->rnd = val;
    } else if (strcasecmp(state->last_key, "window") == 0) {
        state->window = (xcb_window_t)val;
    }
    return 1;
}
