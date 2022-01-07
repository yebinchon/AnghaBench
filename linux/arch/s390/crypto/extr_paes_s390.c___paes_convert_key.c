
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkey_protkey {int dummy; } ;
struct key_blob {int keylen; int key; } ;


 int pkey_keyblob2pkey (int ,int ,struct pkey_protkey*) ;

__attribute__((used)) static inline int __paes_convert_key(struct key_blob *kb,
         struct pkey_protkey *pk)
{
 int i, ret;


 for (i = 0; i < 3; i++) {
  ret = pkey_keyblob2pkey(kb->key, kb->keylen, pk);
  if (ret == 0)
   break;
 }

 return ret;
}
