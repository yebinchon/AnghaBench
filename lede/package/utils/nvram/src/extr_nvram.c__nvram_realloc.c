
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; char* value; } ;
typedef TYPE_1__ nvram_tuple_t ;
struct TYPE_8__ {int length; int offset; } ;
typedef TYPE_2__ nvram_handle_t ;


 TYPE_1__* malloc (int) ;
 scalar_t__ realloc (char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static nvram_tuple_t * _nvram_realloc( nvram_handle_t *h, nvram_tuple_t *t,
 const char *name, const char *value )
{
 if ((strlen(value) + 1) > h->length - h->offset)
  return ((void*)0);

 if (!t) {
  if (!(t = malloc(sizeof(nvram_tuple_t) + strlen(name) + 1)))
   return ((void*)0);


  t->name = (char *) &t[1];
  strcpy(t->name, name);

  t->value = ((void*)0);
 }


 if (!t->value || strcmp(t->value, value))
 {
  if(!(t->value = (char *) realloc(t->value, strlen(value)+1)))
   return ((void*)0);

  strcpy(t->value, value);
  t->value[strlen(value)] = '\0';
 }

 return t;
}
