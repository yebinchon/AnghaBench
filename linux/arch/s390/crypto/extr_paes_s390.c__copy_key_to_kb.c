
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct key_blob {unsigned int keylen; int key; int keybuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc (unsigned int,int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static inline int _copy_key_to_kb(struct key_blob *kb,
      const u8 *key,
      unsigned int keylen)
{
 if (keylen <= sizeof(kb->keybuf))
  kb->key = kb->keybuf;
 else {
  kb->key = kmalloc(keylen, GFP_KERNEL);
  if (!kb->key)
   return -ENOMEM;
 }
 memcpy(kb->key, key, keylen);
 kb->keylen = keylen;

 return 0;
}
