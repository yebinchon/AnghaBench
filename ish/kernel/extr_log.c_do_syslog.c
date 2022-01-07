
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;
typedef int addr_t ;


 int FIFO_LAST ;
 int FIFO_PEEK ;
 int _EINVAL ;
 int fifo_capacity (int *) ;
 int fifo_size (int *) ;
 int log_buf ;
 int log_max_since_clear ;
 int syslog_read (int ,int ,int) ;

__attribute__((used)) static int do_syslog(int type, addr_t buf_addr, int_t len) {
    int res;
    switch (type) {
        case 132:
            return syslog_read(buf_addr, len, 0);
        case 131:
            return syslog_read(buf_addr, len, FIFO_LAST | FIFO_PEEK);

        case 130:
            res = syslog_read(buf_addr, len, FIFO_LAST | FIFO_PEEK);
            if (res < 0)
                return res;

        case 138:
            log_max_since_clear = 0;
            return 0;

        case 128:
            return fifo_size(&log_buf);
        case 129:
            return fifo_capacity(&log_buf);

        case 137:
        case 133:
        case 135:
        case 134:
        case 136:
            return 0;
        default:
            return _EINVAL;
    }
}
