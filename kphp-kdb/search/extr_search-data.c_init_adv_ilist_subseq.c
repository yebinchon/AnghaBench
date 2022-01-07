
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dec; } ;
struct TYPE_7__ {TYPE_2__ dec_subseq; int adv_ilist_subseq; } ;
typedef TYPE_3__ ilist_decoder_t ;
struct TYPE_5__ {scalar_t__ tp; } ;


 int adv_ilist_subseq_fast ;
 int adv_ilist_subseq_slow ;
 scalar_t__ le_interpolative_ext ;

__attribute__((used)) static void init_adv_ilist_subseq (ilist_decoder_t *D) {
  D->adv_ilist_subseq = (D->dec_subseq.dec->tp == le_interpolative_ext) ? adv_ilist_subseq_fast : adv_ilist_subseq_slow;
}
