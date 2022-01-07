
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct af_alg_async_req {unsigned int areqlen; scalar_t__ tsgl_entries; int * tsgl; int rsgl_list; int * last_rsgl; struct sock* sk; } ;


 int ENOMEM ;
 struct af_alg_async_req* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct af_alg_async_req* sock_kmalloc (struct sock*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

struct af_alg_async_req *af_alg_alloc_areq(struct sock *sk,
        unsigned int areqlen)
{
 struct af_alg_async_req *areq = sock_kmalloc(sk, areqlen, GFP_KERNEL);

 if (unlikely(!areq))
  return ERR_PTR(-ENOMEM);

 areq->areqlen = areqlen;
 areq->sk = sk;
 areq->last_rsgl = ((void*)0);
 INIT_LIST_HEAD(&areq->rsgl_list);
 areq->tsgl = ((void*)0);
 areq->tsgl_entries = 0;

 return areq;
}
