
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint32_t ;
typedef int textbuf_t ;


 int send_command (int *,int *,int *) ;
 int textbuf_append_const_string (int *,char*) ;
 int textbuf_init (int *) ;

yrmcds_error yrmcds_text_version(yrmcds* c, uint32_t* serial) {
    textbuf_t buf[1];
    textbuf_init(buf);
    textbuf_append_const_string(buf, "version");
    return send_command(c, buf, serial);
}
