
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tpm_header {int length; } ;
struct tpm_buf {int flags; int * data; } ;


 unsigned int PAGE_SIZE ;
 int TPM_BUF_OVERFLOW ;
 int WARN (int,char*) ;
 int cpu_to_be32 (unsigned int) ;
 int memcpy (int *,unsigned char const*,unsigned int) ;
 unsigned int tpm_buf_length (struct tpm_buf*) ;

__attribute__((used)) static inline void tpm_buf_append(struct tpm_buf *buf,
      const unsigned char *new_data,
      unsigned int new_len)
{
 struct tpm_header *head = (struct tpm_header *)buf->data;
 u32 len = tpm_buf_length(buf);


 if (buf->flags & TPM_BUF_OVERFLOW)
  return;

 if ((len + new_len) > PAGE_SIZE) {
  WARN(1, "tpm_buf: overflow\n");
  buf->flags |= TPM_BUF_OVERFLOW;
  return;
 }

 memcpy(&buf->data[len], new_data, new_len);
 head->length = cpu_to_be32(len + new_len);
}
