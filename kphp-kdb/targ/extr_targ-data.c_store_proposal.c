
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ proposal_hashes; scalar_t__ proposal; int uid; } ;
typedef TYPE_1__ user_t ;


 int add_user_hashlist (int ,scalar_t__) ;
 int assert (int) ;
 int delete_user_hashlist (int ,scalar_t__) ;
 scalar_t__ exact_strdup (char*,int) ;
 int exact_strfree (scalar_t__) ;
 int prepare_words_hashlist (char*,int ,int,int ,int ) ;
 int q_proposal ;
 scalar_t__ save_words_hashlist (scalar_t__,int,int ) ;

int store_proposal (user_t *U, char *proposal, int len) {
  int i;
  assert (len <= 1023);
  assert ((!len && !proposal) || !proposal[len]);
  for (i = 0; i < len; i++) {
    assert ((unsigned char) proposal[i] >= ' ');
  }
  exact_strfree (U->proposal);
  delete_user_hashlist (U->uid, U->proposal_hashes);

  if (len) {
    U->proposal = exact_strdup (proposal, len);
    prepare_words_hashlist ("anyproposal", 0, -1, 0, q_proposal);
    U->proposal_hashes = save_words_hashlist (U->proposal, -1, q_proposal);
    add_user_hashlist (U->uid, U->proposal_hashes);
  } else {
    U->proposal = 0;
    U->proposal_hashes = 0;
  }

  return 1;
}
