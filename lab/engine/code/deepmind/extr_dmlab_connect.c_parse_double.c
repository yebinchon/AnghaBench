
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_error_message ) (int ,int ) ;} ;
struct TYPE_5__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_2__ DeepmindContext ;


 scalar_t__ errno ;
 long strtod (char const*,char**) ;
 int stub1 (int ,int ) ;
 int va (char*,char const*) ;

__attribute__((used)) static int parse_double(const char* s, double* out, DeepmindContext* ctx) {
  errno = 0;
  char* e;
  long int val = strtod(s, &e);
  if (e != s && *e == '\0' && errno == 0) {
    *out = val;
    return 0;
  } else {
    ctx->hooks.set_error_message(ctx->userdata,
                                 va("Invalid double arg %s\n", s));
    return -1;
  }
}
