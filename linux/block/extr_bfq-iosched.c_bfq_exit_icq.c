
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_cq {int dummy; } ;
struct bfq_io_cq {int dummy; } ;


 int bfq_exit_icq_bfqq (struct bfq_io_cq*,int) ;
 struct bfq_io_cq* icq_to_bic (struct io_cq*) ;

__attribute__((used)) static void bfq_exit_icq(struct io_cq *icq)
{
 struct bfq_io_cq *bic = icq_to_bic(icq);

 bfq_exit_icq_bfqq(bic, 1);
 bfq_exit_icq_bfqq(bic, 0);
}
