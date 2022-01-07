
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signature_check {int primary_key_fingerprint; int fingerprint; int key; int signer; int gpg_status; int gpg_output; int payload; } ;


 int FREE_AND_NULL (int ) ;

void signature_check_clear(struct signature_check *sigc)
{
 FREE_AND_NULL(sigc->payload);
 FREE_AND_NULL(sigc->gpg_output);
 FREE_AND_NULL(sigc->gpg_status);
 FREE_AND_NULL(sigc->signer);
 FREE_AND_NULL(sigc->key);
 FREE_AND_NULL(sigc->fingerprint);
 FREE_AND_NULL(sigc->primary_key_fingerprint);
}
