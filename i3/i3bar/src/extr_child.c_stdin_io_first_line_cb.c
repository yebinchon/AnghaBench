
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct status_block {int dummy; } ;
struct ev_loop {int dummy; } ;
typedef int ev_io ;
struct TYPE_5__ {scalar_t__ hide_on_modifier; } ;
struct TYPE_4__ {scalar_t__ version; } ;


 int DLOG (char*,int,unsigned char*) ;
 int EV_READ ;
 int TAILQ_INSERT_TAIL (int *,struct status_block*,int ) ;
 int blocks ;
 TYPE_1__ child ;
 TYPE_2__ config ;
 int draw_bars (int ) ;
 int ev_io_init (int ,int *,int ,int ) ;
 int ev_io_start (int ,int ) ;
 int ev_io_stop (int ,int ) ;
 int free (unsigned char*) ;
 unsigned char* get_buffer (int *,int*) ;
 int main_loop ;
 int parse_json_header (TYPE_1__*,unsigned char*,int,unsigned int*) ;
 int read_flat_input (char*,int) ;
 int read_json_input (unsigned char*,int) ;
 struct status_block* scalloc (int,int) ;
 int statusline_head ;
 int stdin_fd ;
 int stdin_io ;
 int stdin_io_cb ;
 int stop_child () ;

__attribute__((used)) static void stdin_io_first_line_cb(struct ev_loop *loop, ev_io *watcher, int revents) {
    int rec;
    unsigned char *buffer = get_buffer(watcher, &rec);
    if (buffer == ((void*)0))
        return;
    DLOG("Detecting input type based on buffer *%.*s*\n", rec, buffer);

    unsigned int consumed = 0;


    parse_json_header(&child, buffer, rec, &consumed);
    if (child.version > 0) {


        if (config.hide_on_modifier) {
            stop_child();
        }
        draw_bars(read_json_input(buffer + consumed, rec - consumed));
    } else {


        struct status_block *new_block = scalloc(1, sizeof(struct status_block));
        TAILQ_INSERT_TAIL(&statusline_head, new_block, blocks);
        read_flat_input((char *)buffer, rec);
    }
    free(buffer);
    ev_io_stop(main_loop, stdin_io);
    ev_io_init(stdin_io, &stdin_io_cb, stdin_fd, EV_READ);
    ev_io_start(main_loop, stdin_io);
}
