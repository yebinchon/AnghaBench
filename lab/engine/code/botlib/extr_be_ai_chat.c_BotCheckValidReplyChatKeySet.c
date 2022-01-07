
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int source_t ;
struct TYPE_5__ {int flags; int string; TYPE_3__* match; struct TYPE_5__* next; } ;
typedef TYPE_1__ bot_replychatkey_t ;
struct TYPE_6__ {int string; struct TYPE_6__* next; } ;
typedef TYPE_2__ bot_matchstring_t ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__* firststring; struct TYPE_7__* next; } ;
typedef TYPE_3__ bot_matchpiece_t ;


 scalar_t__ MT_STRING ;
 scalar_t__ MT_VARIABLE ;
 int RCKFL_AND ;
 int RCKFL_NOT ;
 int RCKFL_STRING ;
 int RCKFL_VARIABLES ;
 int SourceWarning (int *,char*,...) ;
 int StringContains (int ,int ,int) ;
 int qfalse ;
 int qtrue ;

void BotCheckValidReplyChatKeySet(source_t *source, bot_replychatkey_t *keys)
{
 int allprefixed, hasvariableskey, hasstringkey;
 bot_matchpiece_t *m;
 bot_matchstring_t *ms;
 bot_replychatkey_t *key, *key2;


 allprefixed = qtrue;
 hasvariableskey = hasstringkey = qfalse;
 for (key = keys; key; key = key->next)
 {
  if (!(key->flags & (RCKFL_AND|RCKFL_NOT)))
  {
   allprefixed = qfalse;
   if (key->flags & RCKFL_VARIABLES)
   {
    for (m = key->match; m; m = m->next)
    {
     if (m->type == MT_VARIABLE) hasvariableskey = qtrue;
    }
   }
   else if (key->flags & RCKFL_STRING)
   {
    hasstringkey = qtrue;
   }
  }
  else if ((key->flags & RCKFL_AND) && (key->flags & RCKFL_STRING))
  {
   for (key2 = keys; key2; key2 = key2->next)
   {
    if (key2 == key) continue;
    if (key2->flags & RCKFL_NOT) continue;
    if (key2->flags & RCKFL_VARIABLES)
    {
     for (m = key2->match; m; m = m->next)
     {
      if (m->type == MT_STRING)
      {
       for (ms = m->firststring; ms; ms = ms->next)
       {
        if (StringContains(ms->string, key->string, qfalse) != -1)
        {
         break;
        }
       }
       if (ms) break;
      }
      else if (m->type == MT_VARIABLE)
      {
       break;
      }
     }
     if (!m)
     {
      SourceWarning(source, "one of the match templates does not "
          "leave space for the key %s with the & prefix", key->string);
     }
    }
   }
  }
  if ((key->flags & RCKFL_NOT) && (key->flags & RCKFL_STRING))
  {
   for (key2 = keys; key2; key2 = key2->next)
   {
    if (key2 == key) continue;
    if (key2->flags & RCKFL_NOT) continue;
    if (key2->flags & RCKFL_STRING)
    {
     if (StringContains(key2->string, key->string, qfalse) != -1)
     {
      SourceWarning(source, "the key %s with prefix ! is inside the key %s", key->string, key2->string);
     }
    }
    else if (key2->flags & RCKFL_VARIABLES)
    {
     for (m = key2->match; m; m = m->next)
     {
      if (m->type == MT_STRING)
      {
       for (ms = m->firststring; ms; ms = ms->next)
       {
        if (StringContains(ms->string, key->string, qfalse) != -1)
        {
         SourceWarning(source, "the key %s with prefix ! is inside "
            "the match template string %s", key->string, ms->string);
        }
       }
      }
     }
    }
   }
  }
 }
 if (allprefixed) SourceWarning(source, "all keys have a & or ! prefix");
 if (hasvariableskey && hasstringkey)
 {
  SourceWarning(source, "variables from the match template(s) could be "
        "invalid when outputting one of the chat messages");
 }
}
