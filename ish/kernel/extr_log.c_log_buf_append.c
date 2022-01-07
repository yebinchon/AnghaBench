
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFO_OVERWRITE ;
 scalar_t__ fifo_capacity (int *) ;
 int fifo_write (int *,char const*,scalar_t__,int ) ;
 int log_buf ;
 scalar_t__ log_max_since_clear ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void log_buf_append(const char *msg) {
    fifo_write(&log_buf, msg, strlen(msg), FIFO_OVERWRITE);
    log_max_since_clear += strlen(msg);
    if (log_max_since_clear > fifo_capacity(&log_buf))
        log_max_since_clear = fifo_capacity(&log_buf);
}
