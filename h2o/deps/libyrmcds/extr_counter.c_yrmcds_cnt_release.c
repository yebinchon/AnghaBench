
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
typedef int yrmcds_cnt ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int body ;


 size_t UINT16_MAX ;
 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_CNT_CMD_RELEASE ;
 int hton16 (int ,char*) ;
 int hton32 (int ,char*) ;
 int send_command (int *,int ,int *,int,char*,size_t,char const*) ;

yrmcds_error
yrmcds_cnt_release(yrmcds_cnt* c, const char* name, size_t name_len,
                   uint32_t resources, uint32_t* serial) {
    if( name == ((void*)0) || name_len == 0 || name_len > UINT16_MAX )
        return YRMCDS_BAD_ARGUMENT;

    char body[6];
    hton32(resources, body);
    hton16((uint16_t)name_len, body + 4);
    return send_command(c, YRMCDS_CNT_CMD_RELEASE, serial,
                        sizeof(body), body, name_len, name);
}
