
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct condition_basic {int dummy; } ;
struct TYPE_11__ {int flags; int type; int value; struct TYPE_11__* left; struct TYPE_11__* right; } ;
typedef TYPE_1__ query_t ;
typedef TYPE_2__* condition_t ;
typedef void* condition_func_t ;
struct TYPE_12__ {struct TYPE_12__* true_branch; struct TYPE_12__* false_branch; void* eval; } ;


 int COMPILE_COND_EQ (int ) ;
 int COMPILE_COND_RANGE (int ) ;
 int COMPILE_COND_TWOWORDS (int ) ;
 int COMPILE_COND_WORD (int ) ;
 int COMPILE_COND_WORD_NOSTEM (int ) ;
 int COMPILE_QUANTIFIER (int ) ;
 int address ;
 int adr_city ;
 int adr_country ;
 int adr_district ;
 int adr_house ;
 int adr_name ;
 int adr_station ;
 int adr_street ;
 int adr_type ;
 int age ;
 int alcohol ;
 int assert (int ) ;
 int bday ;
 int birthday_soon ;
 int bmonth ;
 int browser ;
 int byear ;
 int chair ;
 int city ;
 int company ;
 int company_name ;
 TYPE_2__* compile_condition_inlist (TYPE_2__*,TYPE_2__*,int) ;
 int country ;
 int custom1 ;
 int custom10 ;
 int custom11 ;
 int custom12 ;
 int custom13 ;
 int custom14 ;
 int custom15 ;
 int custom2 ;
 int custom3 ;
 int custom4 ;
 int custom5 ;
 int custom6 ;
 int custom7 ;
 int custom8 ;
 int custom9 ;
 int cvisited ;
 int edu_form ;
 int edu_status ;
 int education ;
 int faculty ;
 int future_age ;
 int gcountry ;
 int graduation ;
 int grp_id ;
 int grp_type ;
 int has_photo ;
 int height ;
 int hidden ;
 int hometown ;
 int id ;
 int iiothers ;
 int interests ;
 int job ;
 int lang_id ;
 int mil_finish ;
 int mil_start ;
 int mil_unit ;
 int military ;
 int mstatus ;
 int name ;
 int name_interests ;
 int online ;
 int operator ;
 int pays_money ;
 int political ;
 int ppriority ;
 int privacy ;
 int proposal ;
 int random ;
 int region ;
 int religion ;
 int sch_city ;
 int sch_class ;
 int sch_country ;
 int sch_grad ;
 int sch_id ;
 int sch_spec ;
 int school ;
 int sex ;
 int smoking ;
 int timezone ;
 int uni_city ;
 int uni_country ;
 int univ ;
 int uses_apps ;
 TYPE_2__* zmalloc (int) ;

condition_t build_condition (query_t *Q, condition_t true_branch, condition_t false_branch, int opt_level) {
  if (Q->flags & 1) {
    condition_t tmp = true_branch;
    true_branch = false_branch;
    false_branch = tmp;
  }
  if (Q->flags & 2) {
    condition_func_t quantifier_first, quantifier_next;
    switch (Q->type) {
      COMPILE_QUANTIFIER (education);
      COMPILE_QUANTIFIER (military);
      COMPILE_QUANTIFIER (address);
      COMPILE_QUANTIFIER (company);
      COMPILE_QUANTIFIER (school);
    default:
      assert (0);
    }
    condition_t A = zmalloc (sizeof (struct condition_basic));
    condition_t B = zmalloc (sizeof (struct condition_basic));
    A->eval = quantifier_first;
    B->eval = quantifier_next;
    A->false_branch = B->false_branch = false_branch;
    A->true_branch = B->true_branch = build_condition (Q->left, true_branch, B, opt_level);
    return A;
  }

  switch (Q->type) {
  case 135:
    return build_condition (Q->left, build_condition (Q->right, true_branch, false_branch, opt_level), false_branch, opt_level);
  case 129:
    return build_condition (Q->left, true_branch, build_condition (Q->right, true_branch, false_branch, opt_level), opt_level);
  case 130:
    return build_condition (Q->left, false_branch, true_branch, opt_level);
  case 132:
    return false_branch;
  case 128:
    return true_branch;
  case 131:
    return compile_condition_inlist (true_branch, false_branch, opt_level);
  case 134:
  case 133:
    Q->value = Q->type - 134;
    COMPILE_COND_EQ (birthday_soon);

    COMPILE_COND_RANGE (random);
    COMPILE_COND_RANGE (id);
    COMPILE_COND_EQ (country);
    COMPILE_COND_EQ (city);
    COMPILE_COND_RANGE (bday);
    COMPILE_COND_RANGE (bmonth);
    COMPILE_COND_RANGE (byear);
    COMPILE_COND_RANGE (age);
    COMPILE_COND_RANGE (future_age);
    COMPILE_COND_EQ (political);
    COMPILE_COND_EQ (sex);
    COMPILE_COND_EQ (operator);
    COMPILE_COND_RANGE (browser);
    COMPILE_COND_EQ (region);
    COMPILE_COND_RANGE (height);
    COMPILE_COND_EQ (smoking);
    COMPILE_COND_EQ (alcohol);
    COMPILE_COND_EQ (ppriority);
    COMPILE_COND_EQ (iiothers);
    COMPILE_COND_RANGE (hidden);
    COMPILE_COND_RANGE (cvisited);
    COMPILE_COND_EQ (gcountry);
    COMPILE_COND_RANGE (custom1);
    COMPILE_COND_RANGE (custom2);
    COMPILE_COND_RANGE (custom3);
    COMPILE_COND_RANGE (custom4);
    COMPILE_COND_RANGE (custom5);
    COMPILE_COND_RANGE (custom6);
    COMPILE_COND_RANGE (custom7);
    COMPILE_COND_RANGE (custom8);
    COMPILE_COND_RANGE (custom9);
    COMPILE_COND_RANGE (custom10);
    COMPILE_COND_RANGE (custom11);
    COMPILE_COND_RANGE (custom12);
    COMPILE_COND_RANGE (custom13);
    COMPILE_COND_RANGE (custom14);
    COMPILE_COND_RANGE (custom15);
    COMPILE_COND_RANGE (timezone);
    COMPILE_COND_EQ (mstatus);
    COMPILE_COND_EQ (grp_type);
    COMPILE_COND_EQ (grp_id);
    COMPILE_COND_EQ (lang_id);
    COMPILE_COND_WORD_NOSTEM (name);
    COMPILE_COND_WORD (interests);
    COMPILE_COND_TWOWORDS (name_interests);
    COMPILE_COND_WORD (religion);
    COMPILE_COND_WORD (hometown);
    COMPILE_COND_WORD (proposal);
    COMPILE_COND_RANGE (online);
    COMPILE_COND_EQ (privacy);
    COMPILE_COND_EQ (has_photo);
    COMPILE_COND_EQ (uses_apps);
    COMPILE_COND_EQ (pays_money);

    COMPILE_COND_EQ (uni_country);
    COMPILE_COND_EQ (uni_city);
    COMPILE_COND_EQ (univ);
    COMPILE_COND_EQ (faculty);
    COMPILE_COND_EQ (chair);
    COMPILE_COND_RANGE (graduation);
    COMPILE_COND_EQ (edu_form);
    COMPILE_COND_EQ (edu_status);

    COMPILE_COND_EQ (mil_unit);
    COMPILE_COND_RANGE (mil_start);
    COMPILE_COND_RANGE (mil_finish);

    COMPILE_COND_EQ (adr_country);
    COMPILE_COND_EQ (adr_city);
    COMPILE_COND_EQ (adr_district);
    COMPILE_COND_EQ (adr_station);
    COMPILE_COND_EQ (adr_street);
    COMPILE_COND_EQ (adr_type);
    COMPILE_COND_WORD (adr_house);
    COMPILE_COND_WORD (adr_name);

    COMPILE_COND_WORD (job);
    COMPILE_COND_WORD (company_name);

    COMPILE_COND_EQ (sch_country);
    COMPILE_COND_EQ (sch_city);
    COMPILE_COND_EQ (sch_id);
    COMPILE_COND_RANGE (sch_grad);
    COMPILE_COND_EQ (sch_class);
    COMPILE_COND_WORD (sch_spec);

  default:
    assert (0);
  }
}
