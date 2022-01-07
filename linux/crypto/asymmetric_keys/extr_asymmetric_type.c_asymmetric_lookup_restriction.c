
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_restriction {int dummy; } ;
typedef struct key_restriction key ;
typedef scalar_t__ key_serial_t ;
typedef int key_restrict_link_func_t ;


 int EINVAL ;
 int ENOMEM ;
 struct key_restriction* ERR_CAST (struct key_restriction*) ;
 struct key_restriction* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key_restriction*) ;
 int PAGE_SIZE ;
 struct key_restriction* asymmetric_restriction_alloc (int ,struct key_restriction*) ;
 struct key_restriction* key_lookup (scalar_t__) ;
 int key_put (struct key_restriction*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,int ,int ) ;
 scalar_t__ kstrtos32 (char*,int ,scalar_t__*) ;
 int restrict_link_by_builtin_and_secondary_trusted ;
 int restrict_link_by_builtin_trusted ;
 int restrict_link_by_key_or_keyring ;
 int restrict_link_by_key_or_keyring_chain ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static struct key_restriction *asymmetric_lookup_restriction(
 const char *restriction)
{
 char *restrict_method;
 char *parse_buf;
 char *next;
 struct key_restriction *ret = ERR_PTR(-EINVAL);

 if (strcmp("builtin_trusted", restriction) == 0)
  return asymmetric_restriction_alloc(
   restrict_link_by_builtin_trusted, ((void*)0));

 if (strcmp("builtin_and_secondary_trusted", restriction) == 0)
  return asymmetric_restriction_alloc(
   restrict_link_by_builtin_and_secondary_trusted, ((void*)0));

 parse_buf = kstrndup(restriction, PAGE_SIZE, GFP_KERNEL);
 if (!parse_buf)
  return ERR_PTR(-ENOMEM);

 next = parse_buf;
 restrict_method = strsep(&next, ":");

 if ((strcmp(restrict_method, "key_or_keyring") == 0) && next) {
  char *key_text;
  key_serial_t serial;
  struct key *key;
  key_restrict_link_func_t link_fn =
   restrict_link_by_key_or_keyring;
  bool allow_null_key = 0;

  key_text = strsep(&next, ":");

  if (next) {
   if (strcmp(next, "chain") != 0)
    goto out;

   link_fn = restrict_link_by_key_or_keyring_chain;
   allow_null_key = 1;
  }

  if (kstrtos32(key_text, 0, &serial) < 0)
   goto out;

  if ((serial == 0) && allow_null_key) {
   key = ((void*)0);
  } else {
   key = key_lookup(serial);
   if (IS_ERR(key)) {
    ret = ERR_CAST(key);
    goto out;
   }
  }

  ret = asymmetric_restriction_alloc(link_fn, key);
  if (IS_ERR(ret))
   key_put(key);
 }

out:
 kfree(parse_buf);
 return ret;
}
