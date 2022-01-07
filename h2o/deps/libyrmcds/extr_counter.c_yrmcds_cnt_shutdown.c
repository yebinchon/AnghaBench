
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ yrmcds_cnt ;


 int SHUT_RD ;
 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_OK ;
 int YRMCDS_SYSTEM_ERROR ;
 int shutdown (int ,int ) ;

yrmcds_error
yrmcds_cnt_shutdown(yrmcds_cnt* c) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;
    if( shutdown(c->sock, SHUT_RD) == -1 )
        return YRMCDS_SYSTEM_ERROR;
    return YRMCDS_OK;
}
