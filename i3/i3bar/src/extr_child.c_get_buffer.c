
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ ev_io ;


 scalar_t__ EAGAIN ;
 int ELOG (char*,...) ;
 int EXIT_FAILURE ;
 int FREE (unsigned char*) ;
 int STDIN_CHUNK_SIZE ;
 scalar_t__ errno ;
 int exit (int ) ;
 int read (int,unsigned char*,int) ;
 unsigned char* smalloc (int) ;
 unsigned char* srealloc (unsigned char*,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static unsigned char *get_buffer(ev_io *watcher, int *ret_buffer_len) {
    int fd = watcher->fd;
    int n = 0;
    int rec = 0;
    int buffer_len = STDIN_CHUNK_SIZE;
    unsigned char *buffer = smalloc(buffer_len + 1);
    buffer[0] = '\0';
    while (1) {
        n = read(fd, buffer + rec, buffer_len - rec);
        if (n == -1) {
            if (errno == EAGAIN) {

                break;
            }
            ELOG("read() failed!: %s\n", strerror(errno));
            FREE(buffer);
            exit(EXIT_FAILURE);
        }
        if (n == 0) {
            ELOG("stdin: received EOF\n");
            FREE(buffer);
            *ret_buffer_len = -1;
            return ((void*)0);
        }
        rec += n;

        if (rec == buffer_len) {
            buffer_len += STDIN_CHUNK_SIZE;
            buffer = srealloc(buffer, buffer_len);
        }
    }
    if (*buffer == '\0') {
        FREE(buffer);
        rec = -1;
    }
    *ret_buffer_len = rec;
    return buffer;
}
