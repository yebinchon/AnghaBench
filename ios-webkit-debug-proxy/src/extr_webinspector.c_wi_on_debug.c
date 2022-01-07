
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
typedef int wi_status ;
struct TYPE_3__ {scalar_t__* is_debug; } ;


 int WI_SUCCESS ;
 int cb_asprint (char**,char const*,size_t,int,int) ;
 int free (char*) ;
 int printf (char*,char const*,size_t,char*) ;

wi_status wi_on_debug(wi_t self, const char *message,
    const char *buf, size_t length) {
  if (self->is_debug && *self->is_debug) {
    char *text;
    cb_asprint(&text, buf, length, 80, 30);
    printf("%s[%zd]:\n%s\n", message, length, text);
    free(text);
  }
  return WI_SUCCESS;
}
