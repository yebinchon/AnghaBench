
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tpm_header {int tag; } ;
struct tpm_buf {scalar_t__ data; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline u16 tpm_buf_tag(struct tpm_buf *buf)
{
 struct tpm_header *head = (struct tpm_header *)buf->data;

 return be16_to_cpu(head->tag);
}
