
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tpm_buf {int dummy; } ;
typedef int __be32 ;


 int cpu_to_be32 (int const) ;
 int tpm_buf_append (struct tpm_buf*,int *,int) ;

__attribute__((used)) static inline void tpm_buf_append_u32(struct tpm_buf *buf, const u32 value)
{
 __be32 value2 = cpu_to_be32(value);

 tpm_buf_append(buf, (u8 *) &value2, 4);
}
