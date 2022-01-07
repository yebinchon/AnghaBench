
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqpt_double_quotation ;
 int sqpt_no_quotation ;
 int sqpt_single_quotation ;

__attribute__((used)) static int get_quot_type (char ch) {
  switch (ch) {
    case '"': return sqpt_double_quotation;
    case '\'': return sqpt_single_quotation;
    default: return sqpt_no_quotation;
  }
}
