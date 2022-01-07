
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned char uint64_t ;
typedef unsigned char uint32_t ;
struct TYPE_10__ {int target_info_len; unsigned char* target_info; } ;
struct TYPE_11__ {unsigned char* ntlm2_response; size_t ntlm2_response_len; TYPE_1__ challenge; int nonce; int timestamp; } ;
typedef TYPE_2__ ntlm_client ;


 int NTLM_NTLM2_HASH_LEN ;
 int generate_lm2_response (TYPE_2__*,unsigned char*) ;
 int generate_nonce (TYPE_2__*) ;
 int generate_ntlm2_challengehash (unsigned char*,TYPE_2__*,unsigned char*,unsigned char*,size_t) ;
 int generate_ntlm2_hash (unsigned char*,TYPE_2__*) ;
 int generate_timestamp (TYPE_2__*) ;
 unsigned char htonl (int) ;
 unsigned char htonll (int ) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ntlm_client_set_errmsg (TYPE_2__*,char*) ;

__attribute__((used)) static bool generate_ntlm2_response(ntlm_client *ntlm)
{
 size_t blob_len, ntlm2_response_len;
 uint32_t signature;
 uint64_t timestamp, nonce;
 unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN];
 unsigned char challengehash[16];
 unsigned char *blob;

 if (!generate_timestamp(ntlm) ||
  !generate_nonce(ntlm) ||
  !generate_ntlm2_hash(ntlm2_hash, ntlm))
  return 0;

 blob_len = ntlm->challenge.target_info_len + 32;
 ntlm2_response_len = blob_len + 16;

 if ((ntlm->ntlm2_response = malloc(ntlm2_response_len)) == ((void*)0)) {
  ntlm_client_set_errmsg(ntlm, "out of memory");
  return 0;
 }


 blob = ntlm->ntlm2_response + 16;


 signature = htonl(0x01010000);
 timestamp = htonll(ntlm->timestamp);
 nonce = htonll(ntlm->nonce);


 memcpy(&blob[0], &signature, 4);
 memset(&blob[4], 0, 4);
 memcpy(&blob[8], &timestamp, 8);
 memcpy(&blob[16], &nonce, 8);
 memset(&blob[24], 0, 4);
 memcpy(&blob[28], ntlm->challenge.target_info, ntlm->challenge.target_info_len);
 memset(&blob[28 + ntlm->challenge.target_info_len], 0, 4);

 if (!generate_ntlm2_challengehash(challengehash, ntlm, ntlm2_hash, blob, blob_len))
  return 0;

 memcpy(ntlm->ntlm2_response, challengehash, 16);
 ntlm->ntlm2_response_len = ntlm2_response_len;

 if (!generate_lm2_response(ntlm, ntlm2_hash))
  return 0;

 return 1;
}
