
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_4__ {scalar_t__ text_mode; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint32_t ;


 int YRMCDS_CMD_RAU ;
 int YRMCDS_CMD_RAUQ ;
 int YRMCDS_NOT_IMPLEMENTED ;
 int send_data (TYPE_1__*,int ,char const*,size_t,char const*,size_t,int ,int ,int ,int *) ;

yrmcds_error yrmcds_replace_unlock(yrmcds* c, const char* key, size_t key_len,
                                   const char* data, size_t data_len,
                                   uint32_t flags, uint32_t expire,
                                   int quiet, uint32_t* serial) {
    if( c && c->text_mode )
        return YRMCDS_NOT_IMPLEMENTED;

    return send_data(c, quiet ? YRMCDS_CMD_RAUQ : YRMCDS_CMD_RAU,
                     key, key_len, data, data_len, flags, expire, 0, serial);
}
