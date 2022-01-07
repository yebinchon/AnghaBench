
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aead_request {int assoclen; } ;


 int gcm_hash_assoc_remain_continue (struct aead_request*,int ) ;
 int gcm_hash_assoc_remain_done ;
 scalar_t__ gcm_hash_remain (struct aead_request*,unsigned int,int ,int ) ;
 unsigned int gcm_remain (int ) ;

__attribute__((used)) static int gcm_hash_assoc_continue(struct aead_request *req, u32 flags)
{
 unsigned int remain;

 remain = gcm_remain(req->assoclen);
 if (remain)
  return gcm_hash_remain(req, remain,
           gcm_hash_assoc_remain_done, flags) ?:
         gcm_hash_assoc_remain_continue(req, flags);

 return gcm_hash_assoc_remain_continue(req, flags);
}
