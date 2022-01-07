
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_keymap (int ,char*) ;

__attribute__((used)) static int
insert_keymap (char *key, GModule module)
{
  return ht_insert_keymap (module, key);
}
