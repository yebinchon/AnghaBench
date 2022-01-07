
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yrmcds_error ;
typedef int yrmcds ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int textbuf_t ;


 scalar_t__ YRMCDS_BAD_ARGUMENT ;
 scalar_t__ YRMCDS_OK ;
 scalar_t__ check_key (char const*,size_t) ;
 scalar_t__ send_command (int *,int *,int *) ;
 int textbuf_append_char (int *,char) ;
 int textbuf_append_const_string (int *,char*) ;
 int textbuf_append_string (int *,char const*,size_t) ;
 int textbuf_append_uint64 (int *,int ) ;
 int textbuf_init (int *) ;

yrmcds_error yrmcds_text_incr(yrmcds* c, const char* key, size_t key_len,
                              uint64_t value, int quiet, uint32_t* serial) {
    if( key == ((void*)0) || key_len == 0 || quiet )
        return YRMCDS_BAD_ARGUMENT;

    yrmcds_error ret;
    ret = check_key(key, key_len);
    if( ret != YRMCDS_OK ) return ret;

    textbuf_t buf[1];
    textbuf_init(buf);

    textbuf_append_const_string(buf, "incr ");
    textbuf_append_string(buf, key, key_len);
    textbuf_append_char(buf, ' ');
    textbuf_append_uint64(buf, value);

    return send_command(c, buf, serial);
}
