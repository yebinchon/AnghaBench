
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;


 size_t MAX_KEY_LENGTH ;
 int YRMCDS_BAD_KEY ;
 int YRMCDS_OK ;

__attribute__((used)) static inline yrmcds_error
check_key(const char* key, size_t key_len) {
    if( key_len > MAX_KEY_LENGTH )
        return YRMCDS_BAD_KEY;

    size_t i;
    for( i = 0; i < key_len; i++ ) {
        char c = key[i];
        if( c <= ' ' ) return YRMCDS_BAD_KEY;
        if( c == 127 ) return YRMCDS_BAD_KEY;
    }

    return YRMCDS_OK;
}
