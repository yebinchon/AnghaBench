
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int subtype; int type; int string; scalar_t__ linescrossed; int endwhitespace_p; int whitespace_p; int line; } ;
typedef TYPE_2__ token_t ;
struct TYPE_11__ {TYPE_1__* scriptstack; } ;
typedef TYPE_3__ source_t ;
struct TYPE_9__ {int script_p; int line; } ;


 int PC_Evaluate (TYPE_3__*,int *,float*,int) ;
 int PC_UnreadSourceToken (TYPE_3__*,TYPE_2__*) ;
 int TT_DECIMAL ;
 int TT_FLOAT ;
 int TT_LONG ;
 int TT_NUMBER ;
 int UnreadSignToken (TYPE_3__*) ;
 double fabs (float) ;
 int qfalse ;
 int qtrue ;
 int sprintf (int ,char*,double) ;

int PC_Directive_evalfloat(source_t *source)
{
 float value;
 token_t token;

 if (!PC_Evaluate(source, ((void*)0), &value, qfalse)) return qfalse;
 token.line = source->scriptstack->line;
 token.whitespace_p = source->scriptstack->script_p;
 token.endwhitespace_p = source->scriptstack->script_p;
 token.linescrossed = 0;
 sprintf(token.string, "%1.2f", fabs(value));
 token.type = TT_NUMBER;
 token.subtype = TT_FLOAT|TT_LONG|TT_DECIMAL;
 PC_UnreadSourceToken(source, &token);
 if (value < 0) UnreadSignToken(source);
 return qtrue;
}
