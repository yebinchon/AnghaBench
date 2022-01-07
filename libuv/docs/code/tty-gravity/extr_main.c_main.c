
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int UV_RUN_DEFAULT ;
 int fprintf (int ,char*,...) ;
 int height ;
 int loop ;
 int stderr ;
 int tick ;
 int tty ;
 int update ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int,int) ;
 scalar_t__ uv_tty_get_winsize (int *,int*,int*) ;
 int uv_tty_init (int ,int *,int ,int ) ;
 int uv_tty_reset_mode () ;
 int uv_tty_set_mode (int *,int ) ;
 int width ;

int main() {
    loop = uv_default_loop();

    uv_tty_init(loop, &tty, STDOUT_FILENO, 0);
    uv_tty_set_mode(&tty, 0);

    if (uv_tty_get_winsize(&tty, &width, &height)) {
        fprintf(stderr, "Could not get TTY information\n");
        uv_tty_reset_mode();
        return 1;
    }

    fprintf(stderr, "Width %d, height %d\n", width, height);
    uv_timer_init(loop, &tick);
    uv_timer_start(&tick, update, 200, 200);
    return uv_run(loop, UV_RUN_DEFAULT);
}
