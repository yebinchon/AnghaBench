
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_method (int ,int,char const*) ;

__attribute__((used)) static void
insert_method (int nkey, const char *data, GModule module)
{
  ht_insert_method (module, nkey, data ? data : "---");
}
