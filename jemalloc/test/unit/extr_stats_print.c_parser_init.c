
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verbose; int line; scalar_t__ col; scalar_t__ pos; scalar_t__ len; int * buf; } ;
typedef TYPE_1__ parser_t ;



__attribute__((used)) static void
parser_init(parser_t *parser, bool verbose) {
 parser->verbose = verbose;
 parser->buf = ((void*)0);
 parser->len = 0;
 parser->pos = 0;
 parser->line = 1;
 parser->col = 0;
}
