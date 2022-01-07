
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tpm_buf {int dummy; } ;
typedef int __be16 ;


 int cpu_to_be16 (int const) ;
 int tpm_buf_append (struct tpm_buf*,int *,int) ;

__attribute__((used)) static inline void tpm_buf_append_u16(struct tpm_buf *buf, const u16 value)
{
 __be16 value2 = cpu_to_be16(value);

 tpm_buf_append(buf, (u8 *) &value2, 2);
}
