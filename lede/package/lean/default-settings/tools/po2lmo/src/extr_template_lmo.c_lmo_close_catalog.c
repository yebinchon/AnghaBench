
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* archives; struct TYPE_6__* next; int lang; } ;
typedef TYPE_1__ lmo_catalog_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ lmo_archive_t ;


 TYPE_1__* _lmo_catalogs ;
 int free (TYPE_1__*) ;
 int lmo_close (TYPE_2__*) ;
 int strncmp (int ,char const*,int) ;

void lmo_close_catalog(const char *lang)
{
 lmo_archive_t *ar, *next;
 lmo_catalog_t *cat, *prev;

 for (prev = ((void*)0), cat = _lmo_catalogs; cat; prev = cat, cat = cat->next)
 {
  if (!strncmp(cat->lang, lang, sizeof(cat->lang)))
  {
   if (prev)
    prev->next = cat->next;
   else
    _lmo_catalogs = cat->next;

   for (ar = cat->archives; ar; ar = next)
   {
    next = ar->next;
    lmo_close(ar);
   }

   free(cat);
   break;
  }
 }
}
