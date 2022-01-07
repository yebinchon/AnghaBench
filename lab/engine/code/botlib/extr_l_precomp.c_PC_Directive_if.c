
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int source_t ;


 int INDENT_IF ;
 int PC_Evaluate (int *,long*,int *,int) ;
 int PC_PushIndent (int *,int ,int) ;
 int qfalse ;
 int qtrue ;

int PC_Directive_if(source_t *source)
{
 signed long int value;
 int skip;

 if (!PC_Evaluate(source, &value, ((void*)0), qtrue)) return qfalse;
 skip = (value == 0);
 PC_PushIndent(source, INDENT_IF, skip);
 return qtrue;
}
