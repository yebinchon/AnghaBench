
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int get_main_ref_store (int ) ;
 int refs_create_reflog (int ,char const*,int,struct strbuf*) ;
 int the_repository ;

int safe_create_reflog(const char *refname, int force_create,
         struct strbuf *err)
{
 return refs_create_reflog(get_main_ref_store(the_repository), refname,
      force_create, err);
}
