
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct log {scalar_t__ last; scalar_t__ first; size_t stored; int path; int end; int fd; int id; } ;
typedef struct log gzlog ;


 int BAIL (int) ;
 int COMPRESS_OP ;
 size_t DICT ;
 int LOGID ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 size_t PULL2 (unsigned char*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int close (int) ;
 int free (unsigned char*) ;
 scalar_t__ log_check (struct log*) ;
 int log_compress (struct log*,unsigned char*,size_t) ;
 scalar_t__ log_mark (struct log*,int ) ;
 scalar_t__ log_open (struct log*) ;
 int log_touch (struct log*) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 unsigned char* malloc (size_t) ;
 int open (int ,int,int) ;
 size_t read (int ,...) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (int ,char*) ;
 scalar_t__ write (int,...) ;

int gzlog_compress(gzlog *logd)
{
    int fd, ret;
    uint block;
    size_t len, next;
    unsigned char *data, buf[5];
    struct log *log = logd;


    if (log == ((void*)0) || strcmp(log->id, LOGID))
        return -3;




    if (log_check(log) && log_open(log))
        return -1;


    len = ((size_t)(log->last - log->first) & ~(((size_t)1 << 10) - 1)) +
          log->stored;
    if ((data = malloc(len)) == ((void*)0))
        return -2;


    do {

        if (lseek(log->fd, log->first - 1, SEEK_SET) < 0)
            break;
        next = 0;
        while (next < len) {
            if (read(log->fd, buf, 5) != 5)
                break;
            block = PULL2(buf + 1);
            if (next + block > len ||
                read(log->fd, (char *)data + next, block) != block)
                break;
            next += block;
        }
        if (lseek(log->fd, 0, SEEK_CUR) != log->last + 4 + log->stored)
            break;
        log_touch(log);


        strcpy(log->end, ".add");
        fd = open(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd < 0)
            break;
        ret = (size_t)write(fd, data, len) != len;
        if (ret | close(fd))
            break;
        log_touch(log);


        strcpy(log->end, ".temp");
        fd = open(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd < 0)
            break;
        next = DICT > len ? len : DICT;
        ret = (size_t)write(fd, (char *)data + len - next, next) != next;
        if (ret | close(fd))
            break;
        log_touch(log);


        log->last = log->first;
        log->stored = 0;
        if (log_mark(log, COMPRESS_OP))
            break;
        BAIL(7);


        ret = log_compress(log, data, len);
        free(data);
        return ret;
    } while (0);


    free(data);
    return -1;
}
