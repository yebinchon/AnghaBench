
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int length; int data; } ;
struct lexer_param {int lexer; } ;
typedef int block ;
typedef int YY_BUFFER_STATE ;


 int block_free (int ) ;
 int gen_noop () ;
 int jq_yy_delete_buffer (int ,int ) ;
 int jq_yy_scan_bytes (int ,int ,int ) ;
 int jq_yylex_destroy (int ) ;
 int jq_yylex_init_extra (int ,int *) ;
 int yyparse (int *,int*,struct locfile*,struct lexer_param*) ;

int jq_parse(struct locfile* locations, block* answer) {
  struct lexer_param scanner;
  YY_BUFFER_STATE buf;
  jq_yylex_init_extra(0, &scanner.lexer);
  buf = jq_yy_scan_bytes(locations->data, locations->length, scanner.lexer);
  int errors = 0;
  *answer = gen_noop();
  yyparse(answer, &errors, locations, &scanner);
  jq_yy_delete_buffer(buf, scanner.lexer);
  jq_yylex_destroy(scanner.lexer);
  if (errors > 0) {
    block_free(*answer);
    *answer = gen_noop();
  }
  return errors;
}
