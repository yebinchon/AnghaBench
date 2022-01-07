
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int dummy; } ;
struct lexer_param {int dummy; } ;
typedef int block ;
typedef int YYLTYPE ;


 int locfile_locate (struct locfile*,int ,char*,char const*) ;
 scalar_t__ strstr (char const*,char*) ;

void yyerror(YYLTYPE* loc, block* answer, int* errors,
             struct locfile* locations, struct lexer_param* lexer_param_ptr, const char *s){
  (*errors)++;
  if (strstr(s, "unexpected")) {



      locfile_locate(locations, *loc, "jq: error: %s (Unix shell quoting issues?)", s);

  } else {
      locfile_locate(locations, *loc, "jq: error: %s", s);
  }
}
