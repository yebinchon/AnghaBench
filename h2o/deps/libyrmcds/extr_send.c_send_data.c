
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yrmcds_error ;
typedef int yrmcds_command ;
struct TYPE_4__ {size_t compress_size; } ;
typedef TYPE_1__ yrmcds ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int extras ;


 int LZ4_compress (char const*,char*,int) ;
 int LZ4_compressBound (int) ;
 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_COMPRESS_FAILED ;
 int YRMCDS_FLAG_COMPRESS ;
 int YRMCDS_OUT_OF_MEMORY ;
 int free (void*) ;
 int hton32 (int,char*) ;
 scalar_t__ malloc (size_t) ;
 int send_command (TYPE_1__*,int ,int ,int*,size_t,char const*,int,char*,size_t,char const*) ;

__attribute__((used)) static yrmcds_error send_data(
    yrmcds* c, yrmcds_command cmd, const char* key, size_t key_len,
    const char* data, size_t data_len, uint32_t flags, uint32_t expire,
    uint64_t cas, uint32_t* serial) {
    if( c == ((void*)0) || key == ((void*)0) || key_len == 0 ||
        data == ((void*)0) || data_len == 0 )
        return YRMCDS_BAD_ARGUMENT;

    int compressed = 0;
    char extras[8];
    hton32(flags, extras);
    hton32(expire, &extras[4]);
    yrmcds_error e = send_command(c, cmd, cas, serial, key_len, key,
                                  sizeof(extras), extras, data_len, data);
    if( compressed )
        free((void*)data);
    return e;
}
