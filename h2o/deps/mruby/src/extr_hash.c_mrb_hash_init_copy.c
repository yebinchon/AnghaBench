
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct RHash {int flags; int ht; } ;
typedef int mrb_value ;
struct TYPE_11__ {int hash_class; } ;
typedef TYPE_1__ mrb_state ;
typedef int htable ;


 int E_TYPE_ERROR ;
 int MRB_HASH_DEFAULT ;
 int MRB_HASH_PROC_DEFAULT ;
 scalar_t__ MRB_RHASH_DEFAULT_P (int ) ;
 scalar_t__ MRB_RHASH_PROCDEFAULT_P (int ) ;
 int MRB_TT_HASH ;
 int RHASH_IFNONE (int ) ;
 int * RHASH_TBL (int ) ;
 int ht_copy (TYPE_1__*,int *) ;
 int mrb_get_args (TYPE_1__*,char*,int *) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_iv_set (TYPE_1__*,int ,int ,int ) ;
 int mrb_nil_p (int ) ;
 scalar_t__ mrb_obj_alloc (TYPE_1__*,int ,int ) ;
 scalar_t__ mrb_obj_class (TYPE_1__*,int ) ;
 scalar_t__ mrb_obj_equal (TYPE_1__*,int ,int ) ;
 int mrb_obj_value (struct RHash*) ;
 int mrb_raise (TYPE_1__*,int ,char*) ;
 scalar_t__ mrb_type (int ) ;

__attribute__((used)) static mrb_value
mrb_hash_init_copy(mrb_state *mrb, mrb_value self)
{
  mrb_value orig;
  struct RHash* copy;
  htable *orig_h;
  mrb_value ifnone, vret;

  mrb_get_args(mrb, "o", &orig);
  if (mrb_obj_equal(mrb, self, orig)) return self;
  if ((mrb_type(self) != mrb_type(orig)) || (mrb_obj_class(mrb, self) != mrb_obj_class(mrb, orig))) {
      mrb_raise(mrb, E_TYPE_ERROR, "initialize_copy should take same class object");
  }

  orig_h = RHASH_TBL(self);
  copy = (struct RHash*)mrb_obj_alloc(mrb, MRB_TT_HASH, mrb->hash_class);
  copy->ht = ht_copy(mrb, orig_h);

  if (MRB_RHASH_DEFAULT_P(self)) {
    copy->flags |= MRB_HASH_DEFAULT;
  }
  if (MRB_RHASH_PROCDEFAULT_P(self)) {
    copy->flags |= MRB_HASH_PROC_DEFAULT;
  }
  vret = mrb_obj_value(copy);
  ifnone = RHASH_IFNONE(self);
  if (!mrb_nil_p(ifnone)) {
      mrb_iv_set(mrb, vret, mrb_intern_lit(mrb, "ifnone"), ifnone);
  }
  return vret;
}
