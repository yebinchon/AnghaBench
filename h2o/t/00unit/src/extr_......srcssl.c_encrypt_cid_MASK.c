#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_quic_keyset_t {int /*<<< orphan*/  name; TYPE_2__* cid; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * cid; } ;
typedef  TYPE_1__ quicly_cid_t ;
typedef  int /*<<< orphan*/  quicly_cid_plaintext_t ;
typedef  int /*<<< orphan*/  quicly_cid_encryptor_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* encrypt_cid ) (TYPE_2__*,TYPE_1__*,void*,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,void*,int /*<<< orphan*/  const*) ; 
 struct st_quic_keyset_t* FUNC3 () ; 

__attribute__((used)) static void FUNC4(quicly_cid_encryptor_t *self, quicly_cid_t *encrypted, void *stateless_reset_token,
                        const quicly_cid_plaintext_t *plaintext)
{
    struct st_quic_keyset_t *keyset = FUNC3();
    quicly_cid_t tmp_cid;

    keyset->cid->encrypt_cid(keyset->cid, &tmp_cid, stateless_reset_token, plaintext);
    FUNC0(tmp_cid.len < sizeof(tmp_cid.cid));
    encrypted->cid[0] = keyset->name;
    FUNC1(encrypted->cid + 1, tmp_cid.cid, tmp_cid.len);
    encrypted->len = tmp_cid.len + 1;
}