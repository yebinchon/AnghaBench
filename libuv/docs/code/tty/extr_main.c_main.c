
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_stream_t ;
struct TYPE_3__ {char* base; void* len; } ;
typedef TYPE_1__ uv_buf_t ;


 int STDOUT_FILENO ;
 int UV_RUN_DEFAULT ;
 scalar_t__ UV_TTY ;
 int UV_TTY_MODE_NORMAL ;
 int loop ;
 void* strlen (char*) ;
 int tty ;
 int uv_default_loop () ;
 scalar_t__ uv_guess_handle (int) ;
 int uv_run (int ,int ) ;
 int uv_tty_init (int ,int *,int ,int ) ;
 int uv_tty_reset_mode () ;
 int uv_tty_set_mode (int *,int ) ;
 int uv_write (int *,int *,TYPE_1__*,int,int *) ;

int main() {
    loop = uv_default_loop();

    uv_tty_init(loop, &tty, STDOUT_FILENO, 0);
    uv_tty_set_mode(&tty, UV_TTY_MODE_NORMAL);

    if (uv_guess_handle(1) == UV_TTY) {
        uv_write_t req;
        uv_buf_t buf;
        buf.base = "\033[41;37m";
        buf.len = strlen(buf.base);
        uv_write(&req, (uv_stream_t*) &tty, &buf, 1, ((void*)0));
    }

    uv_write_t req;
    uv_buf_t buf;
    buf.base = "Hello TTY\n";
    buf.len = strlen(buf.base);
    uv_write(&req, (uv_stream_t*) &tty, &buf, 1, ((void*)0));
    uv_tty_reset_mode();
    return uv_run(loop, UV_RUN_DEFAULT);
}
