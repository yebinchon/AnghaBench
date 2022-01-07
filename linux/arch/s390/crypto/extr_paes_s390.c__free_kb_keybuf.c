
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_blob {int keylen; int * key; int * keybuf; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void _free_kb_keybuf(struct key_blob *kb)
{
 if (kb->key && kb->key != kb->keybuf
     && kb->keylen > sizeof(kb->keybuf)) {
  kfree(kb->key);
  kb->key = ((void*)0);
 }
}
