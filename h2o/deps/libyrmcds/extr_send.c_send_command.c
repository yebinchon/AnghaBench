
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
typedef scalar_t__ yrmcds_command ;
struct TYPE_3__ {int lock; int sock; int serial; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int ssize_t ;
typedef int h ;


 int BINARY_HEADER_SIZE ;
 int EINTR ;
 size_t MAX_DATA_SIZE ;
 int YRMCDS_BAD_ARGUMENT ;
 scalar_t__ YRMCDS_CMD_BOTTOM ;
 int YRMCDS_OK ;
 int YRMCDS_SYSTEM_ERROR ;
 int errno ;
 int hton16 (int ,char*) ;
 int hton32 (int ,char*) ;
 int hton64 (int ,char*) ;
 int memcpy (char*,int *,int) ;
 int memset (char*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int writev (int ,struct iovec*,int) ;

__attribute__((used)) static yrmcds_error send_command(
    yrmcds* c, yrmcds_command cmd, uint64_t cas, uint32_t* serial,
    size_t key_len, const char* key,
    size_t extras_len, const char* extras,
    size_t data_len, const char* data) {
    if( cmd >= YRMCDS_CMD_BOTTOM ||
        key_len > 65535 || extras_len > 127 || data_len > MAX_DATA_SIZE ||
        (key_len != 0 && key == ((void*)0)) ||
        (extras_len != 0 && extras == ((void*)0)) ||
        (data_len != 0 && data == ((void*)0)) )
        return YRMCDS_BAD_ARGUMENT;

    char h[BINARY_HEADER_SIZE];
    memset(h, 0, sizeof(h));
    h[0] = '\x80';
    h[1] = (char)cmd;
    hton16((uint16_t)key_len, &h[2]);
    h[4] = (char)extras_len;
    size_t total_len = (key_len + extras_len + data_len);
    hton32((uint32_t)total_len, &h[8]);
    hton64(cas, &h[16]);


    int e = pthread_mutex_lock(&c->lock);
    if( e != 0 ) {
        errno = e;
        return YRMCDS_SYSTEM_ERROR;
    }


    yrmcds_error ret = YRMCDS_OK;
    c->serial = c->serial + 1;
    memcpy(&h[12], &c->serial, 4);
    if( serial != ((void*)0) )
        *serial = c->serial;

    struct iovec iov[4];
    int iovcnt = 1;
    iov[0].iov_base = h;
    iov[0].iov_len = sizeof(h);

    if( extras_len > 0 ) {
        iov[iovcnt].iov_base = (void*)extras;
        iov[iovcnt].iov_len = extras_len;
        iovcnt++;
    }
    if( key_len > 0 ) {
        iov[iovcnt].iov_base = (void*)key;
        iov[iovcnt].iov_len = key_len;
        iovcnt++;
    }
    if( data_len > 0 ) {
        iov[iovcnt].iov_base = (void*)data;
        iov[iovcnt].iov_len = data_len;
        iovcnt++;
    }

    while( iovcnt > 0 ) {
        ssize_t n = writev(c->sock, iov, iovcnt);
        size_t n2 = (size_t)n;
        if( n == -1 ) {
            if( errno == EINTR ) continue;
            ret = YRMCDS_SYSTEM_ERROR;
            goto OUT;
        }
        while( n2 > 0 ) {
            if( n2 < iov[0].iov_len ) {
                iov[0].iov_base = (char*)iov[0].iov_base + n2;
                iov[0].iov_len -= n2;
                break;
            }
            n2 -= iov[0].iov_len;
            iovcnt --;
            if( iovcnt == 0 )
                break;

            int i;
            for( i = 0; i < iovcnt; ++i )
                iov[i] = iov[i+1];
        }
    }

  OUT:

    pthread_mutex_unlock(&c->lock);

    return ret;
}
