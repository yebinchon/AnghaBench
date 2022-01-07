
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_key {void* blob; int blob_len; int key_len; int pub_key_len; void const* pub_key; } ;


 int EBADMSG ;
 int EINVAL ;
 int get_unaligned_be16 (void const*) ;
 int get_unaligned_be32 (void const*) ;

__attribute__((used)) static int extract_key_parameters(struct tpm_key *tk)
{
 const void *cur = tk->blob;
 uint32_t len = tk->blob_len;
 const void *pub_key;
 uint32_t sz;
 uint32_t key_len;

 if (len < 11)
  return -EBADMSG;


 if (get_unaligned_be16(cur + 4) != 0x0015)
  return -EBADMSG;


 cur += 11;
 len -= 11;

 if (len < 12)
  return -EBADMSG;


 if (get_unaligned_be32(cur) != 0x00000001)
  return -EBADMSG;


 if (get_unaligned_be16(cur + 4) != 0x0002)
  return -EBADMSG;


 if (get_unaligned_be16(cur + 6) != 0x0003)
  return -EBADMSG;

 sz = get_unaligned_be32(cur + 8);
 if (len < sz + 12)
  return -EBADMSG;


 len -= 12;
 cur += 12;


 key_len = get_unaligned_be32(cur);

 switch (key_len) {
 case 512:
 case 1024:
 case 1536:
 case 2048:
  break;
 default:
  return -EINVAL;
 }


 cur += sz;
 len -= sz;

 if (len < 4)
  return -EBADMSG;

 sz = get_unaligned_be32(cur);
 if (len < 4 + sz)
  return -EBADMSG;


 cur += 4 + sz;
 len -= 4 + sz;


 sz = get_unaligned_be32(cur);
 if (sz > 256)
  return -EINVAL;

 pub_key = cur + 4;

 tk->key_len = key_len;
 tk->pub_key = pub_key;
 tk->pub_key_len = sz;

 return 0;
}
