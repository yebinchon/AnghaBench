
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


 int YRMCDS_CMD_ADD ;
 int YRMCDS_CMD_ADDQ ;
 int send_data (TYPE_1__*,int ,char const*,size_t,char const*,size_t,int ,int ,int ,int *) ;
 int yrmcds_text_add (TYPE_1__*,char const*,size_t,char const*,size_t,int ,int ,int ,int,int *) ;

yrmcds_error yrmcds_add(yrmcds* c, const char* key, size_t key_len,
                        const char* data, size_t data_len,
                        uint32_t flags, uint32_t expire, uint64_t cas,
                        int quiet, uint32_t* serial) {
    if( c && c->text_mode )
        return yrmcds_text_add(c, key, key_len, data, data_len,
                               flags, expire, cas, quiet, serial);

    return send_data(c, quiet ? YRMCDS_CMD_ADDQ : YRMCDS_CMD_ADD,
                     key, key_len, data, data_len, flags, expire, cas, serial);
}
