
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* str; struct TYPE_4__* next; } ;
typedef TYPE_1__ stringDef_t ;


 int STRING_POOL_SIZE ;
 TYPE_1__* UI_Alloc (int) ;
 unsigned int hashForString (char const*) ;
 TYPE_1__** strHandle ;
 char const* strPool ;
 int strPoolIndex ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strcpy (char const*,char const*) ;
 int strlen (char const*) ;

const char *String_Alloc(const char *p) {
 int len;
 unsigned hash;
 stringDef_t *str, *last;
 static const char *staticNULL = "";

 if (p == ((void*)0)) {
  return ((void*)0);
 }

 if (*p == 0) {
  return staticNULL;
 }

 hash = hashForString(p);

 str = strHandle[hash];
 while (str) {
  if (strcmp(p, str->str) == 0) {
   return str->str;
  }
  str = str->next;
 }

 len = strlen(p);
 if (len + strPoolIndex + 1 < STRING_POOL_SIZE) {
  int ph = strPoolIndex;
  strcpy(&strPool[strPoolIndex], p);
  strPoolIndex += len + 1;

  str = strHandle[hash];
  last = str;
  while (str && str->next) {
   last = str;
   str = str->next;
  }

  str = UI_Alloc(sizeof(stringDef_t));
  if (!str) {
   return ((void*)0);
  }
  str->next = ((void*)0);
  str->str = &strPool[ph];
  if (last) {
   last->next = str;
  } else {
   strHandle[hash] = str;
  }
  return &strPool[ph];
 }
 return ((void*)0);
}
