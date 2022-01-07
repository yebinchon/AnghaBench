
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_buffer {int p; int buff; } ;
struct lev_copyexec_aux_transaction_footer {int sha1; } ;


 int LEV_COPYEXEC_AUX_TRANSACTION_FOOTER ;
 int SHA1 (int ,int ,unsigned char*) ;
 int memcpy (int ,unsigned char*,int) ;
 struct lev_copyexec_aux_transaction_footer* tb_alloc_logevent (struct transaction_buffer*,int ,int) ;

__attribute__((used)) static void tb_close (struct transaction_buffer *B) {
  unsigned char transaction_sha1[20];
  SHA1 (B->buff, B->p, transaction_sha1);
  struct lev_copyexec_aux_transaction_footer *E = tb_alloc_logevent (B, LEV_COPYEXEC_AUX_TRANSACTION_FOOTER, sizeof (struct lev_copyexec_aux_transaction_footer));
  memcpy (E->sha1, transaction_sha1, 20);
}
