
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_UNIQMAP ;
 void* get_hash (int ,int ) ;
 int get_si32 (void*,char const*) ;
 int ins_si32_ai (void*,char const*) ;

int
ht_insert_uniqmap (GModule module, const char *key)
{
  int value = -1;
  void *hash = get_hash (module, MTRC_UNIQMAP);

  if (!hash)
    return -1;

  if ((value = get_si32 (hash, key)) != -1)
    return 0;

  return ins_si32_ai (hash, key);
}
