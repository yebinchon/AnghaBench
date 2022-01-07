
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {void* offset; void* page; } ;
struct TYPE_4__ {void* offset; void* page; } ;
struct ablkcipher_walk {TYPE_3__ out; TYPE_2__ dst; TYPE_3__ in; TYPE_1__ src; } ;
struct ablkcipher_request {int dummy; } ;


 void* offset_in_page (int ) ;
 void* scatterwalk_page (TYPE_3__*) ;

__attribute__((used)) static inline int ablkcipher_next_fast(struct ablkcipher_request *req,
           struct ablkcipher_walk *walk)
{
 walk->src.page = scatterwalk_page(&walk->in);
 walk->src.offset = offset_in_page(walk->in.offset);
 walk->dst.page = scatterwalk_page(&walk->out);
 walk->dst.offset = offset_in_page(walk->out.offset);

 return 0;
}
