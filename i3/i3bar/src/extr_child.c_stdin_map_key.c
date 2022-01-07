
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_map_key; } ;
typedef TYPE_1__ parser_ctx ;


 int FREE (int ) ;
 int sasprintf (int *,char*,size_t,unsigned char const*) ;

__attribute__((used)) static int stdin_map_key(void *context, const unsigned char *key, size_t len) {
    parser_ctx *ctx = context;
    FREE(ctx->last_map_key);
    sasprintf(&(ctx->last_map_key), "%.*s", len, key);
    return 1;
}
