
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct yyguts_t* yyscan_t ;
struct yyguts_t {int dummy; } ;
typedef int YY_EXTRA_TYPE ;


 int EINVAL ;
 int ENOMEM ;
 int errno ;
 int memset (struct yyguts_t*,int,int) ;
 int yy_init_globals (struct yyguts_t*) ;
 scalar_t__ yyalloc (int,struct yyguts_t*) ;
 int yyset_extra (int ,struct yyguts_t*) ;

int yylex_init_extra( YY_EXTRA_TYPE yy_user_defined, yyscan_t* ptr_yy_globals )
{
    struct yyguts_t dummy_yyguts;

    yyset_extra (yy_user_defined, &dummy_yyguts);

    if (ptr_yy_globals == ((void*)0)){
        errno = EINVAL;
        return 1;
    }

    *ptr_yy_globals = (yyscan_t) yyalloc ( sizeof( struct yyguts_t ), &dummy_yyguts );

    if (*ptr_yy_globals == ((void*)0)){
        errno = ENOMEM;
        return 1;
    }



    memset(*ptr_yy_globals,0x00,sizeof(struct yyguts_t));

    yyset_extra (yy_user_defined, *ptr_yy_globals);

    return yy_init_globals ( *ptr_yy_globals );
}
