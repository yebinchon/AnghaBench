
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
typedef int wi_status ;
struct TYPE_4__ {int (* on_error ) (TYPE_1__*,char*,char const,char const,char const,char const,int ,int ,int ,int ,size_t) ;} ;


 size_t MAX_BODY_LENGTH ;
 int TO_CHAR (char const) ;
 int WI_ERROR ;
 int WI_SUCCESS ;
 int stub1 (TYPE_1__*,char*,char const,char const,char const,char const,int ,int ,int ,int ,size_t) ;

wi_status wi_parse_length(wi_t self, const char *buf, size_t *to_length) {
  if (!buf || !to_length) {
    return WI_ERROR;
  }
  *to_length = (
      ((((unsigned char) buf[0]) & 0xFF) << 24) |
      ((((unsigned char) buf[1]) & 0xFF) << 16) |
      ((((unsigned char) buf[2]) & 0xFF) << 8) |
      (((unsigned char) buf[3]) & 0xFF));
  if (MAX_BODY_LENGTH > 0 && *to_length > MAX_BODY_LENGTH) {

    return self->on_error(self, "Invalid packet header "
        "0x%x%x%x%x == %c%c%c%c == %zd",
        buf[0], buf[1], buf[2], buf[3],
        ((buf[0]) >= ' ' && (buf[0]) < '~' ? (buf[0]) : '.'), ((buf[1]) >= ' ' && (buf[1]) < '~' ? (buf[1]) : '.'),
        ((buf[2]) >= ' ' && (buf[2]) < '~' ? (buf[2]) : '.'), ((buf[3]) >= ' ' && (buf[3]) < '~' ? (buf[3]) : '.'),
        *to_length);
  }
  return WI_SUCCESS;
}
