
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lang; struct TYPE_4__* next; } ;
typedef TYPE_1__ lmo_catalog_t ;


 TYPE_1__* _lmo_active_catalog ;
 TYPE_1__* _lmo_catalogs ;
 int strncmp (int ,char const*,int) ;

int lmo_change_catalog(const char *lang)
{
 lmo_catalog_t *cat;

 for (cat = _lmo_catalogs; cat; cat = cat->next)
 {
  if (!strncmp(cat->lang, lang, sizeof(cat->lang)))
  {
   _lmo_active_catalog = cat;
   return 0;
  }
 }

 return -1;
}
