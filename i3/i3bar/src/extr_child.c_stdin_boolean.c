
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int urgent; int no_separator; } ;
struct TYPE_4__ {TYPE_1__ block; int last_map_key; } ;
typedef TYPE_2__ parser_ctx ;


 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int stdin_boolean(void *context, int val) {
    parser_ctx *ctx = context;
    if (strcasecmp(ctx->last_map_key, "urgent") == 0) {
        ctx->block.urgent = val;
        return 1;
    }
    if (strcasecmp(ctx->last_map_key, "separator") == 0) {
        ctx->block.no_separator = !val;
        return 1;
    }

    return 1;
}
