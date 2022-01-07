
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_walk {int buffers; int out; } ;
struct ablkcipher_buffer {int entry; int dst; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void ablkcipher_queue_write(struct ablkcipher_walk *walk,
       struct ablkcipher_buffer *p)
{
 p->dst = walk->out;
 list_add_tail(&p->entry, &walk->buffers);
}
