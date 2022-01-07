
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int token_type; } ;
struct TYPE_7__ {TYPE_1__ token; } ;
typedef TYPE_2__ parser_t ;


 int TOKEN_TYPE_LBRACKET ;

 int assert_d_eq (int,int ,char*) ;
 int not_reached () ;
 int parser_parse_values (TYPE_2__*) ;
 scalar_t__ parser_tokenize (TYPE_2__*) ;

__attribute__((used)) static bool
parser_parse_array(parser_t *parser) {
 assert_d_eq(parser->token.token_type, TOKEN_TYPE_LBRACKET,
     "Array should start with [");
 if (parser_tokenize(parser)) {
  return 1;
 }
 switch (parser->token.token_type) {
 case 128:
  return 0;
 default:
  return parser_parse_values(parser);
 }
 not_reached();
}
