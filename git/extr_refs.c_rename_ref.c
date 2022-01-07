
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_main_ref_store (int ) ;
 int refs_rename_ref (int ,char const*,char const*,char const*) ;
 int the_repository ;

int rename_ref(const char *oldref, const char *newref, const char *logmsg)
{
 return refs_rename_ref(get_main_ref_store(the_repository), oldref, newref, logmsg);
}
