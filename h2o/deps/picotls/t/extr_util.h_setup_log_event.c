
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cb; } ;
struct st_util_log_event_t {TYPE_1__ super; int * fp; } ;
struct TYPE_5__ {TYPE_1__* log_event; } ;
typedef TYPE_2__ ptls_context_t ;


 int errno ;
 int exit (int) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int log_event_cb ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static inline void setup_log_event(ptls_context_t *ctx, const char *fn)
{
    static struct st_util_log_event_t ls;

    if ((ls.fp = fopen(fn, "at")) == ((void*)0)) {
        fprintf(stderr, "failed to open file:%s:%s\n", fn, strerror(errno));
        exit(1);
    }
    ls.super.cb = log_event_cb;
    ctx->log_event = &ls.super;
}
