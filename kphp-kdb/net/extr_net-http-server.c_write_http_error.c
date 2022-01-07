
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 char* error_text_pattern ;
 char* http_get_error_msg_text (int*) ;
 int sprintf (char*,char*,int,char const*,int,char const*) ;
 int write_basic_http_header (struct connection*,int,int ,int,int ,int ) ;
 int write_out (int *,char*,int) ;

int write_http_error (struct connection *c, int code) {
  if (code == 204) {
    write_basic_http_header (c, code, 0, -1, 0, 0);
    return 0;
  } else {
    static char buff[1024];
    char *ptr = buff;
    const char *error_message = http_get_error_msg_text (&code);
    ptr += sprintf (ptr, error_text_pattern, code, error_message, code, error_message);
    write_basic_http_header (c, code, 0, ptr - buff, 0, 0);
    return write_out (&c->Out, buff, ptr - buff);
  }
}
