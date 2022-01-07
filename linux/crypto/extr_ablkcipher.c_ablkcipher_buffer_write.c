
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_buffer {int len; int dst; int data; } ;


 int scatterwalk_copychunks (int ,int *,int ,int) ;

__attribute__((used)) static inline void ablkcipher_buffer_write(struct ablkcipher_buffer *p)
{
 scatterwalk_copychunks(p->data, &p->dst, p->len, 1);
}
