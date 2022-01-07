
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_main_ref_store (int ) ;
 int refs_create_symref (int ,char const*,char const*,char const*) ;
 int the_repository ;

int create_symref(const char *ref_target, const char *refs_heads_master,
    const char *logmsg)
{
 return refs_create_symref(get_main_ref_store(the_repository), ref_target,
      refs_heads_master, logmsg);
}
