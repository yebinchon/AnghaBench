
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_key {struct public_key* params; struct public_key* key; } ;


 int kfree (struct public_key*) ;

void public_key_free(struct public_key *key)
{
 if (key) {
  kfree(key->key);
  kfree(key->params);
  kfree(key);
 }
}
