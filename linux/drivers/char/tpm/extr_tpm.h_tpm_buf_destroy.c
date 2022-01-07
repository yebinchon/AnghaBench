
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_buf {int data_page; } ;


 int __free_page (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static inline void tpm_buf_destroy(struct tpm_buf *buf)
{
 kunmap(buf->data_page);
 __free_page(buf->data_page);
}
