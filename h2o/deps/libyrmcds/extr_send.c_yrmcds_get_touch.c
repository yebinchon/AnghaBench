
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_4__ {scalar_t__ text_mode; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint32_t ;
typedef int extras ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_CMD_GAT ;
 int YRMCDS_CMD_GATQ ;
 int YRMCDS_NOT_IMPLEMENTED ;
 int hton32 (int ,char*) ;
 int send_command (TYPE_1__*,int ,int ,int *,size_t,char const*,int,char*,int ,int *) ;

yrmcds_error yrmcds_get_touch(yrmcds* c, const char* key, size_t key_len,
                              uint32_t expire, int quiet, uint32_t* serial) {
    if( c == ((void*)0) || key == ((void*)0) || key_len == 0 )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return YRMCDS_NOT_IMPLEMENTED;

    char extras[4];
    hton32(expire, extras);
    return send_command(c, quiet ? YRMCDS_CMD_GATQ : YRMCDS_CMD_GAT,
                        0, serial, key_len, key,
                        sizeof(extras), extras, 0, ((void*)0));
}
