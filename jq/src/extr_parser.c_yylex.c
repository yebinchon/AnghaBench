
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yyscan_t ;
struct locfile {int dummy; } ;
struct lexer_param {int lexer; } ;
typedef int jv ;
typedef int block ;
struct TYPE_4__ {int literal; } ;
typedef TYPE_1__ YYSTYPE ;
typedef int YYLTYPE ;


 int FAIL (int ,char*) ;
 scalar_t__ JV_KIND_STRING ;
 int LITERAL ;
 int QQSTRING_TEXT ;
 int jq_yylex (TYPE_1__*,int *,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_get_msg (int ) ;
 int jv_is_valid (int ) ;
 int jv_null () ;
 char* jv_string_value (int ) ;

int yylex(YYSTYPE* yylval, YYLTYPE* yylloc, block* answer, int* errors,
          struct locfile* locations, struct lexer_param* lexer_param_ptr) {
  yyscan_t lexer = lexer_param_ptr->lexer;
  int tok = jq_yylex(yylval, yylloc, lexer);
  if ((tok == LITERAL || tok == QQSTRING_TEXT) && !jv_is_valid(yylval->literal)) {
    jv msg = jv_invalid_get_msg(jv_copy(yylval->literal));
    if (jv_get_kind(msg) == JV_KIND_STRING) {
      FAIL(*yylloc, jv_string_value(msg));
    } else {
      FAIL(*yylloc, "Invalid literal");
    }
    jv_free(msg);
    jv_free(yylval->literal);
    yylval->literal = jv_null();
  }
  return tok;
}
