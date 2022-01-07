
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_restriction {int * keytype; struct key* key; int check; } ;
struct key {int dummy; } ;
typedef int key_restrict_link_func_t ;


 int ENOMEM ;
 struct key_restriction* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int key_type_asymmetric ;
 struct key_restriction* kzalloc (int,int ) ;

__attribute__((used)) static struct key_restriction *asymmetric_restriction_alloc(
 key_restrict_link_func_t check,
 struct key *key)
{
 struct key_restriction *keyres =
  kzalloc(sizeof(struct key_restriction), GFP_KERNEL);

 if (!keyres)
  return ERR_PTR(-ENOMEM);

 keyres->check = check;
 keyres->key = key;
 keyres->keytype = &key_type_asymmetric;

 return keyres;
}
