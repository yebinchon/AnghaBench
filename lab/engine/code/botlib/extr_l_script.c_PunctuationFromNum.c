
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* punctuations; } ;
typedef TYPE_2__ script_t ;
struct TYPE_4__ {char* p; int n; } ;



char *PunctuationFromNum(script_t *script, int num)
{
 int i;

 for (i = 0; script->punctuations[i].p; i++)
 {
  if (script->punctuations[i].n == num) return script->punctuations[i].p;
 }
 return "unknown punctuation";
}
