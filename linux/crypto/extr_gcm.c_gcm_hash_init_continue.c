
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aead_request {scalar_t__ assoclen; int src; } ;


 int gcm_hash_assoc_continue (struct aead_request*,int ) ;
 int gcm_hash_assoc_done ;
 int gcm_hash_assoc_remain_continue (struct aead_request*,int ) ;
 scalar_t__ gcm_hash_update (struct aead_request*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int gcm_hash_init_continue(struct aead_request *req, u32 flags)
{
 if (req->assoclen)
  return gcm_hash_update(req, gcm_hash_assoc_done,
           req->src, req->assoclen, flags) ?:
         gcm_hash_assoc_continue(req, flags);

 return gcm_hash_assoc_remain_continue(req, flags);
}
