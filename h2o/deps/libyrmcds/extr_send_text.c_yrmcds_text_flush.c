
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint32_t ;
typedef int textbuf_t ;


 int YRMCDS_BAD_ARGUMENT ;
 int send_command (int *,int *,int *) ;
 int textbuf_append_char (int *,char) ;
 int textbuf_append_const_string (int *,char*) ;
 int textbuf_append_uint64 (int *,int ) ;
 int textbuf_init (int *) ;

yrmcds_error yrmcds_text_flush(yrmcds* c, uint32_t delay,
                               int quiet, uint32_t* serial) {
    if( quiet )
        return YRMCDS_BAD_ARGUMENT;

    textbuf_t buf[1];
    textbuf_init(buf);

    textbuf_append_const_string(buf, "flush_all");
    if( delay != 0 ) {
        textbuf_append_char(buf, ' ');
        textbuf_append_uint64(buf, delay);
    }

    return send_command(c, buf, serial);
}
