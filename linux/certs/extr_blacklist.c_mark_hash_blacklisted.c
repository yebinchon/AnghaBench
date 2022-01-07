
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_ref_t ;


 scalar_t__ IS_ERR (int ) ;
 int KEY_ALLOC_BUILT_IN ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_ALL ;
 int KEY_POS_SETATTR ;
 int KEY_USR_VIEW ;
 int PTR_ERR (int ) ;
 int blacklist_keyring ;
 int key_create_or_update (int ,char*,char const*,int *,int ,int,int) ;
 int make_key_ref (int ,int) ;
 int pr_err (char*,int) ;

int mark_hash_blacklisted(const char *hash)
{
 key_ref_t key;

 key = key_create_or_update(make_key_ref(blacklist_keyring, 1),
       "blacklist",
       hash,
       ((void*)0),
       0,
       ((KEY_POS_ALL & ~KEY_POS_SETATTR) |
        KEY_USR_VIEW),
       KEY_ALLOC_NOT_IN_QUOTA |
       KEY_ALLOC_BUILT_IN);
 if (IS_ERR(key)) {
  pr_err("Problem blacklisting hash (%ld)\n", PTR_ERR(key));
  return PTR_ERR(key);
 }
 return 0;
}
