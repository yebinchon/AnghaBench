
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_TokenizeString2 (char const*,int ) ;
 int qtrue ;

void Cmd_TokenizeStringIgnoreQuotes( const char *text_in ) {
 Cmd_TokenizeString2( text_in, qtrue );
}
