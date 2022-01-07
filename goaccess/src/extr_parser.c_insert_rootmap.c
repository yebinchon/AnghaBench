
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_rootmap (int ,int,char const*) ;

__attribute__((used)) static void
insert_rootmap (int root_nkey, const char *root, GModule module)
{
  ht_insert_rootmap (module, root_nkey, root);
}
