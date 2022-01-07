
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ev_loop {int dummy; } ;
typedef int ev_io ;
struct TYPE_2__ {scalar_t__ version; } ;


 TYPE_1__ child ;
 int draw_bars (int) ;
 int free (unsigned char*) ;
 unsigned char* get_buffer (int *,int*) ;
 int read_flat_input (char*,int) ;
 int read_json_input (unsigned char*,int) ;

__attribute__((used)) static void stdin_io_cb(struct ev_loop *loop, ev_io *watcher, int revents) {
    int rec;
    unsigned char *buffer = get_buffer(watcher, &rec);
    if (buffer == ((void*)0))
        return;
    bool has_urgent = 0;
    if (child.version > 0) {
        has_urgent = read_json_input(buffer, rec);
    } else {
        read_flat_input((char *)buffer, rec);
    }
    free(buffer);
    draw_bars(has_urgent);
}
