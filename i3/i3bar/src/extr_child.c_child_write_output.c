
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int click_events; } ;


 TYPE_1__ child ;
 int child_stdin ;
 int draw_bars (int) ;
 int gen ;
 int kill_child () ;
 int set_statusline_error (char*) ;
 int writeall (int ,...) ;
 int yajl_gen_clear (int ) ;
 int yajl_gen_get_buf (int ,unsigned char const**,size_t*) ;

__attribute__((used)) static void child_write_output(void) {
    if (child.click_events) {
        const unsigned char *output;
        size_t size;
        ssize_t n;

        yajl_gen_get_buf(gen, &output, &size);

        n = writeall(child_stdin, output, size);
        if (n != -1)
            n = writeall(child_stdin, "\n", 1);

        yajl_gen_clear(gen);

        if (n == -1) {
            child.click_events = 0;
            kill_child();
            set_statusline_error("child_write_output failed");
            draw_bars(0);
        }
    }
}
