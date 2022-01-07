
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_timer_t ;
typedef int uv_stream_t ;
struct TYPE_3__ {char* base; int len; } ;
typedef TYPE_1__ uv_buf_t ;


 int height ;
 int message ;
 int pos ;
 int sprintf (char*,char*,int,unsigned long,int ) ;
 scalar_t__ strlen (int ) ;
 int tick ;
 int tty ;
 int uv_timer_stop (int *) ;
 int uv_tty_reset_mode () ;
 int uv_write (int *,int *,TYPE_1__*,int,int *) ;
 scalar_t__ width ;
 int write_req ;

void update(uv_timer_t *req) {
    char data[500];

    uv_buf_t buf;
    buf.base = data;
    buf.len = sprintf(data, "\033[2J\033[H\033[%dB\033[%luC\033[42;37m%s",
                            pos,
                            (unsigned long) (width-strlen(message))/2,
                            message);
    uv_write(&write_req, (uv_stream_t*) &tty, &buf, 1, ((void*)0));

    pos++;
    if (pos > height) {
        uv_tty_reset_mode();
        uv_timer_stop(&tick);
    }
}
