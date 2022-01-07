
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aead_request {int dummy; } ;


 scalar_t__ gcm_hash_len (struct aead_request*,int ) ;
 int gcm_hash_len_continue (struct aead_request*,int ) ;

__attribute__((used)) static int gcm_hash_crypt_remain_continue(struct aead_request *req, u32 flags)
{
 return gcm_hash_len(req, flags) ?:
        gcm_hash_len_continue(req, flags);
}
