
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_PROTOCOLS ;
 void* get_hash (int ,int ) ;
 char* get_is32 (void*,int) ;

char *
ht_get_protocol (GModule module, int key)
{
  void *hash = get_hash (module, MTRC_PROTOCOLS);

  if (!hash)
    return ((void*)0);

  return get_is32 (hash, key);
}
