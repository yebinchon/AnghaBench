
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_5__ {scalar_t__ text_mode; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int extras ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_CMD_INCREMENT ;
 int YRMCDS_CMD_INCREMENTQ ;
 int hton32 (int ,char*) ;
 int hton64 (int ,char*) ;
 int send_command (TYPE_1__*,int ,int ,int *,size_t,char const*,int,char*,int ,int *) ;
 int yrmcds_text_incr (TYPE_1__*,char const*,size_t,int ,int,int *) ;

yrmcds_error yrmcds_incr(yrmcds* c, const char* key, size_t key_len,
                         uint64_t value, int quiet, uint32_t* serial) {
    if( c == ((void*)0) || key == ((void*)0) || key_len == 0 )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return yrmcds_text_incr(c, key, key_len, value, quiet, serial);

    char extras[20];
    hton64(value, extras);
    hton64((uint64_t)0, &extras[8]);
    hton32(~(uint32_t)0, &extras[16]);
    return send_command(c, quiet ? YRMCDS_CMD_INCREMENTQ : YRMCDS_CMD_INCREMENT,
                        0, serial, key_len, key,
                        sizeof(extras), extras, 0, ((void*)0));
}
