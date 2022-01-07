
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {int dummy; } ;


 int YY_CURRENT_BUFFER ;
 int YY_FATAL_ERROR (char*) ;
 int yycolumn ;

void yyset_column (int _column_no , yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;


        if (! YY_CURRENT_BUFFER )
           YY_FATAL_ERROR( "yyset_column called with no buffer" );

    yycolumn = _column_no;
}
