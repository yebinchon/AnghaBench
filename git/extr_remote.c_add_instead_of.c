
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewrite {int instead_of_nr; TYPE_1__* instead_of; int instead_of_alloc; } ;
struct TYPE_2__ {char const* s; int len; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void add_instead_of(struct rewrite *rewrite, const char *instead_of)
{
 ALLOC_GROW(rewrite->instead_of, rewrite->instead_of_nr + 1, rewrite->instead_of_alloc);
 rewrite->instead_of[rewrite->instead_of_nr].s = instead_of;
 rewrite->instead_of[rewrite->instead_of_nr].len = strlen(instead_of);
 rewrite->instead_of_nr++;
}
