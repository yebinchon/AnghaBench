
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_5__ {scalar_t__ text_mode; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint32_t ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_CMD_VERSION ;
 int send_command (TYPE_1__*,int ,int ,int *,int ,int *,int ,int *,int ,int *) ;
 int yrmcds_text_version (TYPE_1__*,int *) ;

yrmcds_error yrmcds_version(yrmcds* c, uint32_t* serial) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return yrmcds_text_version(c, serial);

    return send_command(c, YRMCDS_CMD_VERSION,
                        0, serial, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0));
}
