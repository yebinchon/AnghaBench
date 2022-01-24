#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MD5 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  RMD160 ; 
 int /*<<< orphan*/  SHA1 ; 
 int /*<<< orphan*/  SHA256 ; 
 int /*<<< orphan*/  SHA384 ; 
 int /*<<< orphan*/  SHA512 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct RClass* FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_digest_block_length ; 
 int /*<<< orphan*/  mrb_digest_digest ; 
 int /*<<< orphan*/  mrb_digest_digest_bang ; 
 int /*<<< orphan*/  mrb_digest_digest_length ; 
 int /*<<< orphan*/  mrb_digest_hexdigest ; 
 int /*<<< orphan*/  mrb_digest_init ; 
 int /*<<< orphan*/  mrb_digest_init_copy ; 
 int /*<<< orphan*/  mrb_digest_reset ; 
 int /*<<< orphan*/  mrb_digest_update ; 
 int /*<<< orphan*/  mrb_hmac_block_length ; 
 int /*<<< orphan*/  mrb_hmac_digest ; 
 int /*<<< orphan*/  mrb_hmac_digest_length ; 
 int /*<<< orphan*/  mrb_hmac_hexdigest ; 
 int /*<<< orphan*/  mrb_hmac_init ; 
 int /*<<< orphan*/  mrb_hmac_init_copy ; 
 int /*<<< orphan*/  mrb_hmac_update ; 

void
FUNC8(mrb_state *mrb)
{
  struct RClass *b, *d, *h;

  FUNC4();

  d = FUNC7(mrb, "Digest");

  b = FUNC5(mrb, d, "Base", mrb->object_class);
  FUNC6(mrb, b, "block_length",    mrb_digest_block_length,  FUNC1());
  FUNC6(mrb, b, "digest",          mrb_digest_digest,        FUNC1());
  FUNC6(mrb, b, "digest!",         mrb_digest_digest_bang,   FUNC1()); /* XXX: can be defined in mrblib... */
  FUNC6(mrb, b, "digest_length",   mrb_digest_digest_length, FUNC1());
  //mrb_define_method(mrb, b, "file",            mrb_digest_file,          MRB_ARGS_REQ(1));
  FUNC6(mrb, b, "hexdigest",       mrb_digest_hexdigest,     FUNC1());
  //mrb_define_method(mrb, b, "hexdigest!",      mrb_digest_hexdigest_bang, MRB_ARGS_NONE()); /* XXX: can be defined in mrblib... */
  FUNC6(mrb, b, "initialize",      mrb_digest_init,          FUNC1());
  FUNC6(mrb, b, "initialize_copy", mrb_digest_init_copy,     FUNC2(1));
  FUNC6(mrb, b, "reset",           mrb_digest_reset,         FUNC1());
  FUNC6(mrb, b, "update",          mrb_digest_update,        FUNC2(1));

#define DEFCLASS(n)						\
do {								\
  struct RClass *a = mrb_define_class_under(mrb, d, #n, b);	\
  MRB_SET_INSTANCE_TT(a, MRB_TT_DATA);				\
  mrb_define_const(mrb, a, TYPESYM, mrb_fixnum_value(MD_TYPE_##n));	\
} while (0)

#ifdef HAVE_MD5
  DEFCLASS(MD5);
#endif
#ifdef HAVE_RMD160
  DEFCLASS(RMD160);
#endif
#ifdef HAVE_SHA1
  DEFCLASS(SHA1);
#endif
#ifdef HAVE_SHA256
  DEFCLASS(SHA256);
#endif
#ifdef HAVE_SHA384
  DEFCLASS(SHA384);
#endif
#ifdef HAVE_SHA512
  DEFCLASS(SHA512);
#endif

  h = FUNC5(mrb, d, "HMAC", mrb->object_class);
  FUNC3(h, MRB_TT_DATA);
  FUNC6(mrb, h, "block_length",    mrb_hmac_block_length,  FUNC1());
  FUNC6(mrb, h, "digest",          mrb_hmac_digest,        FUNC1());
  FUNC6(mrb, h, "digest_length",   mrb_hmac_digest_length, FUNC1());
  FUNC6(mrb, h, "hexdigest",       mrb_hmac_hexdigest,     FUNC1());
  FUNC6(mrb, h, "initialize",      mrb_hmac_init,          FUNC2(2));
  FUNC6(mrb, h, "initialize_copy", mrb_hmac_init_copy,     FUNC2(1));
  FUNC6(mrb, h, "update",          mrb_hmac_update,        FUNC2(1));
}