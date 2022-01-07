
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
typedef scalar_t__ yrmcds_cnt_command ;
struct TYPE_3__ {int serial; int lock; int sock; } ;
typedef TYPE_1__ yrmcds_cnt ;
typedef int uint32_t ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int ssize_t ;


 int EINTR ;
 int HEADER_SIZE ;
 size_t UINT32_MAX ;
 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_OK ;
 int YRMCDS_SYSTEM_ERROR ;
 int errno ;
 int hton32 (int,char*) ;
 int memcpy (char*,int*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int writev (int ,struct iovec*,int) ;

__attribute__((used)) static yrmcds_error
send_command(yrmcds_cnt* c, yrmcds_cnt_command cmd, uint32_t* serial,
             size_t body1_len, const char* body1,
             size_t body2_len, const char* body2) {
    if( c == ((void*)0) ||
        body1_len > UINT32_MAX - body2_len ||
        (body1_len != 0 && body1 == ((void*)0)) ||
        (body2_len != 0 && body2 == ((void*)0)) )
        return YRMCDS_BAD_ARGUMENT;


    int e = pthread_mutex_lock(&c->lock);
    if( e != 0 ) {
        errno = e;
        return YRMCDS_SYSTEM_ERROR;
    }


    c->serial += 1;
    if( serial != ((void*)0) )
        *serial = c->serial;

    char header[HEADER_SIZE];
    header[0] = '\x90';
    header[1] = (char)cmd;
    header[2] = 0;
    header[3] = 0;
    hton32((uint32_t)(body1_len + body2_len), header + 4);
    memcpy(header + 8, &c->serial, 4);

    yrmcds_error ret = YRMCDS_OK;

    struct iovec iov[3];
    size_t iovcnt = 1;

    iov[0].iov_base = header;
    iov[0].iov_len = HEADER_SIZE;

    if( body1_len != 0 ) {
        iov[iovcnt].iov_base = (void*)body1;
        iov[iovcnt].iov_len = body1_len;
        ++iovcnt;
    }
    if( body2_len != 0 ) {
        iov[iovcnt].iov_base = (void*)body2;
        iov[iovcnt].iov_len = body2_len;
        ++iovcnt;
    }

    size_t i;
    for( i = 0; i < iovcnt; ) {
        ssize_t n = writev(c->sock, iov + i, (int)(iovcnt - i));
        size_t n2 = (size_t)n;
        if( n == -1 ) {
            if( errno == EINTR ) continue;
            ret = YRMCDS_SYSTEM_ERROR;
            break;
        }
        while( n2 > 0 ) {
            if( n2 < iov[i].iov_len ) {
                iov[i].iov_base = (char*)iov[i].iov_base + n2;
                iov[i].iov_len -= n2;
                break;
            }
            n2 -= iov[i].iov_len;
            ++i;
        }
    }


    pthread_mutex_unlock(&c->lock);

    return ret;
}
