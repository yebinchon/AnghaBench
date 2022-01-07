
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
struct TYPE_3__ {scalar_t__* is_debug; } ;


 int WS_SUCCESS ;
 int cb_asprint (char**,char const*,size_t,int,int) ;
 int free (char*) ;
 int printf (char*,char const*,size_t,char*) ;

ws_status ws_on_debug(ws_t self, const char *message,
    const char *buf, size_t length) {

  if (self->is_debug && *self->is_debug) {
    char *text;
    cb_asprint(&text, buf, length, 80, 50);
    printf("%s[%zd]:\n%s\n", message, length, text);
    free(text);
  }
  return WS_SUCCESS;
}
