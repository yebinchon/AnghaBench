
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; unsigned long intvalue; int string; scalar_t__ floatvalue; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
struct TYPE_9__ {unsigned long context; int totalweight; TYPE_3__* firstsynonym; struct TYPE_9__* next; } ;
typedef TYPE_2__ bot_synonymlist_t ;
struct TYPE_10__ {char* string; scalar_t__ weight; struct TYPE_10__* next; } ;
typedef TYPE_3__ bot_synonym_t ;
struct TYPE_11__ {int (* Print ) (int ,char*,char*) ;} ;


 int BOTFILESBASEFOLDER ;
 int FreeSource (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int * LoadSourceFile (char*) ;
 size_t PAD (size_t,int) ;
 scalar_t__ PC_CheckTokenString (int *,char*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int PC_ExpectTokenType (int *,scalar_t__,int ,TYPE_1__*) ;
 scalar_t__ PC_ReadToken (int *,TYPE_1__*) ;
 int PC_SetBaseFolder (int ) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int SourceError (int *,char*,...) ;
 int StripDoubleQuotes (int ) ;
 scalar_t__ TT_NUMBER ;
 scalar_t__ TT_PUNCTUATION ;
 scalar_t__ TT_STRING ;
 TYPE_4__ botimport ;
 int strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 int stub1 (int ,char*,char*) ;
 int stub2 (int ,char*,char*) ;

bot_synonymlist_t *BotLoadSynonyms(char *filename)
{
 int pass, size, contextlevel, numsynonyms;
 unsigned long int context, contextstack[32];
 char *ptr = ((void*)0);
 source_t *source;
 token_t token;
 bot_synonymlist_t *synlist, *lastsyn, *syn;
 bot_synonym_t *synonym, *lastsynonym;

 size = 0;
 synlist = ((void*)0);
 syn = ((void*)0);
 synonym = ((void*)0);

 for (pass = 0; pass < 2; pass++)
 {

  if (pass && size) ptr = (char *) GetClearedHunkMemory(size);

  PC_SetBaseFolder(BOTFILESBASEFOLDER);
  source = LoadSourceFile(filename);
  if (!source)
  {
   botimport.Print(PRT_ERROR, "counldn't load %s\n", filename);
   return ((void*)0);
  }

  context = 0;
  contextlevel = 0;
  synlist = ((void*)0);
  lastsyn = ((void*)0);

  while(PC_ReadToken(source, &token))
  {
   if (token.type == TT_NUMBER)
   {
    context |= token.intvalue;
    contextstack[contextlevel] = token.intvalue;
    contextlevel++;
    if (contextlevel >= 32)
    {
     SourceError(source, "more than 32 context levels");
     FreeSource(source);
     return ((void*)0);
    }
    if (!PC_ExpectTokenString(source, "{"))
    {
     FreeSource(source);
     return ((void*)0);
    }
   }
   else if (token.type == TT_PUNCTUATION)
   {
    if (!strcmp(token.string, "}"))
    {
     contextlevel--;
     if (contextlevel < 0)
     {
      SourceError(source, "too many }");
      FreeSource(source);
      return ((void*)0);
     }
     context &= ~contextstack[contextlevel];
    }
    else if (!strcmp(token.string, "["))
    {
     size += sizeof(bot_synonymlist_t);
     if (pass && ptr)
     {
      syn = (bot_synonymlist_t *) ptr;
      ptr += sizeof(bot_synonymlist_t);
      syn->context = context;
      syn->firstsynonym = ((void*)0);
      syn->next = ((void*)0);
      if (lastsyn) lastsyn->next = syn;
      else synlist = syn;
      lastsyn = syn;
     }
     numsynonyms = 0;
     lastsynonym = ((void*)0);
     while(1)
     {
      size_t len;
      if (!PC_ExpectTokenString(source, "(") ||
       !PC_ExpectTokenType(source, TT_STRING, 0, &token))
      {
       FreeSource(source);
       return ((void*)0);
      }
      StripDoubleQuotes(token.string);
      if (strlen(token.string) <= 0)
      {
       SourceError(source, "empty string");
       FreeSource(source);
       return ((void*)0);
      }
      len = strlen(token.string) + 1;
      len = PAD(len, sizeof(long));
      size += sizeof(bot_synonym_t) + len;
      if (pass && ptr)
      {
       synonym = (bot_synonym_t *) ptr;
       ptr += sizeof(bot_synonym_t);
       synonym->string = ptr;
       ptr += len;
       strcpy(synonym->string, token.string);

       if (lastsynonym) lastsynonym->next = synonym;
       else syn->firstsynonym = synonym;
       lastsynonym = synonym;
      }
      numsynonyms++;
      if (!PC_ExpectTokenString(source, ",") ||
       !PC_ExpectTokenType(source, TT_NUMBER, 0, &token) ||
       !PC_ExpectTokenString(source, ")"))
      {
       FreeSource(source);
       return ((void*)0);
      }
      if (pass && ptr)
      {
       synonym->weight = token.floatvalue;
       syn->totalweight += synonym->weight;
      }
      if (PC_CheckTokenString(source, "]")) break;
      if (!PC_ExpectTokenString(source, ","))
      {
       FreeSource(source);
       return ((void*)0);
      }
     }
     if (numsynonyms < 2)
     {
      SourceError(source, "synonym must have at least two entries");
      FreeSource(source);
      return ((void*)0);
     }
    }
    else
    {
     SourceError(source, "unexpected %s", token.string);
     FreeSource(source);
     return ((void*)0);
    }
   }
  }

  FreeSource(source);

  if (contextlevel > 0)
  {
   SourceError(source, "missing }");
   return ((void*)0);
  }
 }
 botimport.Print(PRT_MESSAGE, "loaded %s\n", filename);



 return synlist;
}
