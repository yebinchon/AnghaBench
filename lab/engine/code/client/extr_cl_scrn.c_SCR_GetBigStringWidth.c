
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIGCHAR_WIDTH ;
 int SCR_Strlen (char const*) ;

int SCR_GetBigStringWidth( const char *str ) {
 return SCR_Strlen( str ) * BIGCHAR_WIDTH;
}
