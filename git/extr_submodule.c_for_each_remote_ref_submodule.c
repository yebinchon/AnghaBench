
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int each_ref_fn ;


 int get_submodule_ref_store (char const*) ;
 int refs_for_each_remote_ref (int ,int ,void*) ;

__attribute__((used)) static int for_each_remote_ref_submodule(const char *submodule,
      each_ref_fn fn, void *cb_data)
{
 return refs_for_each_remote_ref(get_submodule_ref_store(submodule),
     fn, cb_data);
}
