
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;
typedef int addr_t ;


 int FIFO_LAST ;
 int _EFAULT ;
 int _EINVAL ;
 size_t fifo_capacity (int *) ;
 int fifo_read (int *,char*,int,int) ;
 int free (char*) ;
 int log_buf ;
 size_t log_max_since_clear ;
 char* malloc (int) ;
 int user_write (int ,char*,int) ;

__attribute__((used)) static int syslog_read(addr_t buf_addr, int_t len, int flags) {
    if (len < 0)
        return _EINVAL;
    if (flags & FIFO_LAST) {
        if ((size_t) len > log_max_since_clear)
            len = log_max_since_clear;
    } else {
        if ((size_t) len > fifo_capacity(&log_buf))
            len = fifo_capacity(&log_buf);
    }
    char *buf = malloc(len);
    fifo_read(&log_buf, buf, len, flags);
    int fail = user_write(buf_addr, buf, len);
    free(buf);
    if (fail)
        return _EFAULT;
    return len;
}
