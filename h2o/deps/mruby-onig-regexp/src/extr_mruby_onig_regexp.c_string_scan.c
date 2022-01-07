
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {int num_regs; int* beg; int* end; } ;
typedef TYPE_1__ OnigRegion ;
typedef int OnigRegex ;


 scalar_t__ DATA_PTR (int const) ;
 int Data_Get_Struct (int *,int const,int *,int ) ;
 scalar_t__ ONIG_MISMATCH ;
 int ONIG_REGEXP_P (int const) ;
 int RSTRING_LEN (int const) ;
 char* RSTRING_PTR (int const) ;
 int const create_onig_region (int *,int const,int const) ;
 int mrb_array_p (int const) ;
 int const mrb_ary_new (int *) ;
 int const mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int const,int const) ;
 int mrb_assert (int ) ;
 int const mrb_funcall_with_block (int *,int const,int ,int,int const*,int const) ;
 int mrb_get_args (int *,char*,int const*,int const*) ;
 int mrb_intern_lit (int *,char*) ;
 scalar_t__ mrb_nil_p (int const) ;
 int mrb_onig_regexp_type ;
 int mrb_string_p (int const) ;
 int mrb_yield (int *,int const,int const) ;
 scalar_t__ onig_match_common (int *,int ,int const,int const,int) ;
 int const str_substr (int *,int const,int,int) ;
 int utf8len (char*,char*) ;

__attribute__((used)) static mrb_value
string_scan(mrb_state* mrb, mrb_value self) {
  mrb_value blk, match_expr;
  mrb_get_args(mrb, "&o", &blk, &match_expr);

  if(!ONIG_REGEXP_P(match_expr)) {
    return mrb_funcall_with_block(mrb, self, mrb_intern_lit(mrb, "string_scan"),
                                  1, &match_expr, blk);
  }

  OnigRegex reg;
  Data_Get_Struct(mrb, match_expr, &mrb_onig_regexp_type, reg);
  mrb_value const result = mrb_nil_p(blk)? mrb_ary_new(mrb) : self;
  mrb_value m_value = create_onig_region(mrb, self, match_expr);
  OnigRegion* const m = (OnigRegion*)DATA_PTR(m_value);
  int last_end_pos = 0;
  int i;

  while (1) {
    if(onig_match_common(mrb, reg, m_value, self, last_end_pos) == ONIG_MISMATCH) { break; }

    if(mrb_nil_p(blk)) {
      mrb_assert(mrb_array_p(result));
      if(m->num_regs == 1) {
        mrb_ary_push(mrb, result, str_substr(mrb, self, m->beg[0], m->end[0] - m->beg[0]));
      } else {
        mrb_value const elem = mrb_ary_new_capa(mrb, m->num_regs - 1);
        for(i = 1; i < m->num_regs; ++i) {
          mrb_ary_push(mrb, elem, str_substr(mrb, self, m->beg[i], m->end[i] - m->beg[i]));
        }
        mrb_ary_push(mrb, result, elem);
      }
    } else {
      mrb_assert(mrb_string_p(result));
      if(m->num_regs == 1) {
        mrb_yield(mrb, blk, str_substr(mrb, self, m->beg[0], m->end[0] - m->beg[0]));
      } else {
        mrb_value argv = mrb_ary_new_capa(mrb, m->num_regs - 1);
        for(i = 1; i < m->num_regs; ++i) {
          mrb_ary_push(mrb, argv, str_substr(mrb, self, m->beg[i], m->end[i] - m->beg[i]));
        }
        mrb_yield(mrb, blk, argv);
      }
    }

    if (m->beg[0] == m->end[0]) {



      if (RSTRING_LEN(self) > m->end[0]) {
        char* p = RSTRING_PTR(self) + last_end_pos;
        char* e = p + RSTRING_LEN(self);
        int len = utf8len(p, e);
        last_end_pos = m->end[0] + len;
      } else {
        last_end_pos = m->end[0] + 1;
      }
    } else {
      last_end_pos = m->end[0];
    }
  }

  return result;
}
