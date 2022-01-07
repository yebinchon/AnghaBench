
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
typedef int source_t ;


 scalar_t__ PC_ReadLine (int *,int *) ;
 int SourceWarning (int *,char*) ;
 int qtrue ;

int PC_Directive_pragma(source_t *source)
{
 token_t token;

 SourceWarning(source, "#pragma directive not supported");
 while(PC_ReadLine(source, &token)) ;
 return qtrue;
}
