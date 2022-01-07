
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {scalar_t__ http_ver; int query_flags; } ;
struct connection {int Out; } ;


 int B_SZ ;
 struct hts_data* HTS_DATA (struct connection*) ;
 scalar_t__ HTTP_V10 ;
 int QF_KEEPALIVE ;
 int assert (int) ;
 char* cur_http_date () ;
 int gen_http_date (char*,int) ;
 char* header_pattern ;
 char* http_get_error_msg_text (int*) ;
 int snprintf (char*,int,char*,int,char const*,char*,char const*,char*,char const*) ;
 int sprintf (char*,char*,...) ;
 int write_out (int *,char*,int) ;

int write_basic_http_header (struct connection *c, int code, int date, int len, const char *add_header, const char *content_type) {
  struct hts_data *D = HTS_DATA(c);

  if (D->http_ver >= HTTP_V10) {

    static char buff[2048], date_buff[32];
    char *ptr = buff;
    const char *error_message = http_get_error_msg_text (&code);
    if (date) {
      gen_http_date (date_buff, date);
    }
    ptr += snprintf (ptr, 2048 - 64, header_pattern, code, error_message,
      date ? date_buff : cur_http_date(), content_type ? content_type : "text/html", (D->query_flags & QF_KEEPALIVE) ? "keep-alive" : "close", add_header ? add_header : "");
    assert (ptr < buff + 2048 - 64);
    if (len >= 0) {
      ptr += sprintf (ptr, "Content-Length: %d\r\n", len);
    }

    ptr += sprintf (ptr, "\r\n");

    return write_out (&c->Out, buff, ptr - buff);
  }

  return 0;
}
