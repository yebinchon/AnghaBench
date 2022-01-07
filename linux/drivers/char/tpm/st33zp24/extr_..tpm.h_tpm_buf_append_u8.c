
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_buf {int dummy; } ;


 int tpm_buf_append (struct tpm_buf*,int const*,int) ;

__attribute__((used)) static inline void tpm_buf_append_u8(struct tpm_buf *buf, const u8 value)
{
 tpm_buf_append(buf, &value, 1);
}
