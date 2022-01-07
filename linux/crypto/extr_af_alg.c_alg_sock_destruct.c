
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct alg_sock {int private; int type; } ;


 int alg_do_release (int ,int ) ;
 struct alg_sock* alg_sk (struct sock*) ;

__attribute__((used)) static void alg_sock_destruct(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);

 alg_do_release(ask->type, ask->private);
}
