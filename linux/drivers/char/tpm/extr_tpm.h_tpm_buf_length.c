
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_header {int length; } ;
struct tpm_buf {scalar_t__ data; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 tpm_buf_length(struct tpm_buf *buf)
{
 struct tpm_header *head = (struct tpm_header *)buf->data;

 return be32_to_cpu(head->length);
}
