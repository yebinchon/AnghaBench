
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_error_message ) (int ,int ) ;} ;
struct TYPE_5__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_2__ DeepmindContext ;


 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ,int ) ;
 int va (char*,char const*) ;

__attribute__((used)) static int parse_bool(const char* s, bool* out, DeepmindContext* ctx) {
  if (strcmp(s, "true") == 0) {
    *out = 1;
    return 0;
  } else if (strcmp(s, "false") == 0) {
    *out = 0;
    return 0;
  } else {
    ctx->hooks.set_error_message(ctx->userdata,
                                 va("Invalid boolean arg must be either "
                                    "\"true\" or \"false\"; actual \"%s\"\n",
                                    s));
    return -1;
  }
}
