
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint64_t ;
typedef int uint32_t ;


 int EXPAND_STR (char*) ;
 int send_data (int *,int ,char const*,size_t,char const*,size_t,int ,int ,int ,int,int *) ;

yrmcds_error yrmcds_text_add(yrmcds* c, const char* key, size_t key_len,
                             const char* data, size_t data_len,
                             uint32_t flags, uint32_t expire, uint64_t cas,
                             int quiet, uint32_t* serial) {
    return send_data(c, EXPAND_STR("add"), key, key_len, data, data_len,
                     flags, expire, cas, quiet, serial);
}
