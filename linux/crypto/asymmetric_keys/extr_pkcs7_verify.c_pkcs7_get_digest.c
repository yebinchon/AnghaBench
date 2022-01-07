
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pkcs7_signed_info {TYPE_1__* sig; int * next; } ;
struct pkcs7_message {struct pkcs7_signed_info* signed_infos; } ;
typedef enum hash_algo { ____Placeholder_hash_algo } hash_algo ;
struct TYPE_2__ {int hash_algo; int digest_size; int * digest; } ;


 int EBADMSG ;
 int HASH_ALGO__LAST ;
 int * hash_algo_name ;
 int pkcs7_digest (struct pkcs7_message*,struct pkcs7_signed_info*) ;
 int strcmp (int ,int ) ;

int pkcs7_get_digest(struct pkcs7_message *pkcs7, const u8 **buf, u32 *len,
       enum hash_algo *hash_algo)
{
 struct pkcs7_signed_info *sinfo = pkcs7->signed_infos;
 int i, ret;




 if (sinfo == ((void*)0) || sinfo->next != ((void*)0))
  return -EBADMSG;

 ret = pkcs7_digest(pkcs7, sinfo);
 if (ret)
  return ret;

 *buf = sinfo->sig->digest;
 *len = sinfo->sig->digest_size;

 for (i = 0; i < HASH_ALGO__LAST; i++)
  if (!strcmp(hash_algo_name[i], sinfo->sig->hash_algo)) {
   *hash_algo = i;
   break;
  }

 return 0;
}
