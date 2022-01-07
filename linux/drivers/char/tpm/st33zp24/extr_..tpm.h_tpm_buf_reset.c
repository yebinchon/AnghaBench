
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tpm_header {void* ordinal; void* length; int tag; } ;
struct tpm_buf {scalar_t__ data; } ;


 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static inline void tpm_buf_reset(struct tpm_buf *buf, u16 tag, u32 ordinal)
{
 struct tpm_header *head = (struct tpm_header *)buf->data;

 head->tag = cpu_to_be16(tag);
 head->length = cpu_to_be32(sizeof(*head));
 head->ordinal = cpu_to_be32(ordinal);
}
