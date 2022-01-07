
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_id {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct asymmetric_key_id* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int __asymmetric_key_hex_to_key_id (char const*,struct asymmetric_key_id*,size_t) ;
 int kfree (struct asymmetric_key_id*) ;
 struct asymmetric_key_id* kmalloc (int,int ) ;
 size_t strlen (char const*) ;

struct asymmetric_key_id *asymmetric_key_hex_to_key_id(const char *id)
{
 struct asymmetric_key_id *match_id;
 size_t asciihexlen;
 int ret;

 if (!*id)
  return ERR_PTR(-EINVAL);
 asciihexlen = strlen(id);
 if (asciihexlen & 1)
  return ERR_PTR(-EINVAL);

 match_id = kmalloc(sizeof(struct asymmetric_key_id) + asciihexlen / 2,
      GFP_KERNEL);
 if (!match_id)
  return ERR_PTR(-ENOMEM);
 ret = __asymmetric_key_hex_to_key_id(id, match_id, asciihexlen / 2);
 if (ret < 0) {
  kfree(match_id);
  return ERR_PTR(-EINVAL);
 }
 return match_id;
}
