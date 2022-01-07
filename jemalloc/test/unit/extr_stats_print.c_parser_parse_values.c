
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int token_type; } ;
struct TYPE_7__ {TYPE_1__ token; } ;
typedef TYPE_2__ parser_t ;




 scalar_t__ parser_parse_value (TYPE_2__*) ;
 scalar_t__ parser_tokenize (TYPE_2__*) ;

__attribute__((used)) static bool
parser_parse_values(parser_t *parser) {
 if (parser_parse_value(parser)) {
  return 1;
 }

 while (1) {
  if (parser_tokenize(parser)) {
   return 1;
  }
  switch (parser->token.token_type) {
  case 129:
   if (parser_tokenize(parser)) {
    return 1;
   }
   if (parser_parse_value(parser)) {
    return 1;
   }
   break;
  case 128:
   return 0;
  default:
   return 1;
  }
 }
}
