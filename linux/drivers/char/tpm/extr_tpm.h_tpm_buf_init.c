
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tpm_buf {int data_page; int data; scalar_t__ flags; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int alloc_page (int ) ;
 int kmap (int ) ;
 int tpm_buf_reset (struct tpm_buf*,int ,int ) ;

__attribute__((used)) static inline int tpm_buf_init(struct tpm_buf *buf, u16 tag, u32 ordinal)
{
 buf->data_page = alloc_page(GFP_HIGHUSER);
 if (!buf->data_page)
  return -ENOMEM;

 buf->flags = 0;
 buf->data = kmap(buf->data_page);
 tpm_buf_reset(buf, tag, ordinal);
 return 0;
}
