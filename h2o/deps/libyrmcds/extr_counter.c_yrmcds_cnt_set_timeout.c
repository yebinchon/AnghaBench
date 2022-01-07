
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ yrmcds_cnt ;
typedef int tv ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_OK ;
 int YRMCDS_SYSTEM_ERROR ;
 int setsockopt (int ,int ,int ,struct timeval*,int) ;

yrmcds_error
yrmcds_cnt_set_timeout(yrmcds_cnt* c, int timeout) {
    if( c == ((void*)0) || timeout < 0 )
        return YRMCDS_BAD_ARGUMENT;

    struct timeval tv;
    tv.tv_sec = timeout;
    tv.tv_usec = 0;

    if( setsockopt(c->sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) == -1 )
        return YRMCDS_SYSTEM_ERROR;
    if( setsockopt(c->sock, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv)) == -1 )
        return YRMCDS_SYSTEM_ERROR;
    return YRMCDS_OK;
}
