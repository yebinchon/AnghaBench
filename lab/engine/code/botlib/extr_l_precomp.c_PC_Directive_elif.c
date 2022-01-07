
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int source_t ;


 int INDENT_ELIF ;
 int INDENT_ELSE ;
 int PC_Evaluate (int *,long*,int *,int) ;
 int PC_PopIndent (int *,int*,int*) ;
 int PC_PushIndent (int *,int ,int) ;
 int SourceError (int *,char*) ;
 int qfalse ;
 int qtrue ;

int PC_Directive_elif(source_t *source)
{
 signed long int value;
 int type, skip;

 PC_PopIndent(source, &type, &skip);
 if (!type || type == INDENT_ELSE)
 {
  SourceError(source, "misplaced #elif");
  return qfalse;
 }
 if (!PC_Evaluate(source, &value, ((void*)0), qtrue)) return qfalse;
 skip = (value == 0);
 PC_PushIndent(source, INDENT_ELIF, skip);
 return qtrue;
}
