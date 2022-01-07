
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keyword; struct TYPE_4__* next; } ;
typedef TYPE_1__ keywordHash_t ;


 int KeywordHash_Key (char*) ;
 int Q_stricmp (int ,char*) ;

keywordHash_t *KeywordHash_Find(keywordHash_t *table[], char *keyword)
{
 keywordHash_t *key;
 int hash;

 hash = KeywordHash_Key(keyword);
 for (key = table[hash]; key; key = key->next) {
  if (!Q_stricmp(key->keyword, keyword))
   return key;
 }
 return ((void*)0);
}
