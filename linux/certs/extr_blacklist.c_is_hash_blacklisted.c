
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int key_ref_t ;


 int EKEYREJECTED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int bin2hex (char*,int const*,size_t) ;
 int blacklist_keyring ;
 int key_ref_put (int ) ;
 int key_type_blacklist ;
 int keyring_search (int ,int *,char*,int) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int make_key_ref (int ,int) ;
 char* memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int is_hash_blacklisted(const u8 *hash, size_t hash_len, const char *type)
{
 key_ref_t kref;
 size_t type_len = strlen(type);
 char *buffer, *p;
 int ret = 0;

 buffer = kmalloc(type_len + 1 + hash_len * 2 + 1, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;
 p = memcpy(buffer, type, type_len);
 p += type_len;
 *p++ = ':';
 bin2hex(p, hash, hash_len);
 p += hash_len * 2;
 *p = 0;

 kref = keyring_search(make_key_ref(blacklist_keyring, 1),
         &key_type_blacklist, buffer, 0);
 if (!IS_ERR(kref)) {
  key_ref_put(kref);
  ret = -EKEYREJECTED;
 }

 kfree(buffer);
 return ret;
}
