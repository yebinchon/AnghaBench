
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t hashIndex; TYPE_2__* hashPrev; TYPE_4__* hashNext; TYPE_1__* prev; struct TYPE_11__* next; scalar_t__ description; scalar_t__ resetString; scalar_t__ latchedString; scalar_t__ string; scalar_t__ name; int flags; } ;
typedef TYPE_3__ cvar_t ;
struct TYPE_12__ {TYPE_2__* hashPrev; } ;
struct TYPE_10__ {TYPE_4__* hashNext; } ;
struct TYPE_9__ {TYPE_3__* next; } ;


 int Com_Memset (TYPE_3__*,char,int) ;
 int Z_Free (scalar_t__) ;
 int cvar_modifiedFlags ;
 TYPE_3__* cvar_vars ;
 TYPE_4__** hashTable ;

cvar_t *Cvar_Unset(cvar_t *cv)
{
 cvar_t *next = cv->next;


 cvar_modifiedFlags |= cv->flags;

 if(cv->name)
  Z_Free(cv->name);
 if(cv->string)
  Z_Free(cv->string);
 if(cv->latchedString)
  Z_Free(cv->latchedString);
 if(cv->resetString)
  Z_Free(cv->resetString);
 if(cv->description)
  Z_Free(cv->description);

 if(cv->prev)
  cv->prev->next = cv->next;
 else
  cvar_vars = cv->next;
 if(cv->next)
  cv->next->prev = cv->prev;

 if(cv->hashPrev)
  cv->hashPrev->hashNext = cv->hashNext;
 else
  hashTable[cv->hashIndex] = cv->hashNext;
 if(cv->hashNext)
  cv->hashNext->hashPrev = cv->hashPrev;

 Com_Memset(cv, '\0', sizeof(*cv));

 return next;
}
