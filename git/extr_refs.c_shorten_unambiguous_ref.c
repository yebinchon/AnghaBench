
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_main_ref_store (int ) ;
 char* refs_shorten_unambiguous_ref (int ,char const*,int) ;
 int the_repository ;

char *shorten_unambiguous_ref(const char *refname, int strict)
{
 return refs_shorten_unambiguous_ref(get_main_ref_store(the_repository),
         refname, strict);
}
