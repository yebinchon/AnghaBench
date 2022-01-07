
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_protocol (int ,int,char const*) ;

__attribute__((used)) static void
insert_protocol (int nkey, const char *data, GModule module)
{
  ht_insert_protocol (module, nkey, data ? data : "---");
}
