
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk_buffer {int entry; int dst; } ;
struct skcipher_walk {int buffers; int out; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void skcipher_queue_write(struct skcipher_walk *walk,
     struct skcipher_walk_buffer *p)
{
 p->dst = walk->out;
 list_add_tail(&p->entry, &walk->buffers);
}
