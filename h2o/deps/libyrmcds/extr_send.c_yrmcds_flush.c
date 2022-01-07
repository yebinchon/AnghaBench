
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_5__ {scalar_t__ text_mode; } ;
typedef TYPE_1__ yrmcds ;
typedef scalar_t__ uint32_t ;
typedef int extra ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_CMD_FLUSH ;
 int YRMCDS_CMD_FLUSHQ ;
 int hton32 (scalar_t__,char*) ;
 int send_command (TYPE_1__*,int ,int ,scalar_t__*,int ,int *,int,char*,int ,int *) ;
 int yrmcds_text_flush (TYPE_1__*,scalar_t__,int,scalar_t__*) ;

yrmcds_error yrmcds_flush(yrmcds* c, uint32_t delay,
                          int quiet, uint32_t* serial) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return yrmcds_text_flush(c, delay, quiet, serial);

    if( delay == 0 )
        return send_command(c, quiet ? YRMCDS_CMD_FLUSHQ : YRMCDS_CMD_FLUSH,
                            0, serial, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0));

    char extra[4];
    hton32(delay, extra);
    return send_command(c, quiet ? YRMCDS_CMD_FLUSHQ : YRMCDS_CMD_FLUSH,
                        0, serial, 0, ((void*)0), sizeof(extra), extra, 0, ((void*)0));
}
