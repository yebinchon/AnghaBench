
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_buf {int data; } ;


 int INIT_BUF (struct tpm_buf*) ;
 int MAX_BUF_SIZE ;
 int TPM_FLUSHSPECIFIC_SIZE ;
 int TPM_ORD_FLUSHSPECIFIC ;
 int TPM_RT_KEY ;
 int TPM_TAG_RQU_COMMAND ;
 int store16 (struct tpm_buf*,int ) ;
 int store32 (struct tpm_buf*,int ) ;
 int trusted_tpm_send (int ,int ) ;

__attribute__((used)) static int tpm_flushspecific(struct tpm_buf *tb, uint32_t handle)
{
 INIT_BUF(tb);
 store16(tb, TPM_TAG_RQU_COMMAND);
 store32(tb, TPM_FLUSHSPECIFIC_SIZE);
 store32(tb, TPM_ORD_FLUSHSPECIFIC);
 store32(tb, handle);
 store32(tb, TPM_RT_KEY);

 return trusted_tpm_send(tb->data, MAX_BUF_SIZE);
}
