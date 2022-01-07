
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * yyscan_t ;
struct yyguts_t {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int errno ;
 int memset (int *,int,int) ;
 int yy_init_globals (int *) ;
 scalar_t__ yyalloc (int,int *) ;

int yylex_init(yyscan_t* ptr_yy_globals)
{
    if (ptr_yy_globals == ((void*)0)){
        errno = EINVAL;
        return 1;
    }

    *ptr_yy_globals = (yyscan_t) yyalloc ( sizeof( struct yyguts_t ), ((void*)0) );

    if (*ptr_yy_globals == ((void*)0)){
        errno = ENOMEM;
        return 1;
    }


    memset(*ptr_yy_globals,0x00,sizeof(struct yyguts_t));

    return yy_init_globals ( *ptr_yy_globals );
}
