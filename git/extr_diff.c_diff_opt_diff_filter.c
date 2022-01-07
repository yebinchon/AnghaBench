
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int filter; } ;


 int ARRAY_SIZE (int ) ;
 int BUG_ON_OPT_NEG (int) ;
 size_t DIFF_STATUS_FILTER_AON ;
 int _ (char*) ;
 int diff_status_letters ;
 int error (int ,char const,char const*) ;
 unsigned int* filter_bit ;
 int prepare_filter_bits () ;
 int toupper (int) ;

__attribute__((used)) static int diff_opt_diff_filter(const struct option *option,
    const char *optarg, int unset)
{
 struct diff_options *opt = option->value;
 int i, optch;

 BUG_ON_OPT_NEG(unset);
 prepare_filter_bits();






 if (!opt->filter) {
  for (i = 0; (optch = optarg[i]) != '\0'; i++) {
   if (optch < 'a' || 'z' < optch)
    continue;
   opt->filter = (1 << (ARRAY_SIZE(diff_status_letters) - 1)) - 1;
   opt->filter &= ~filter_bit[DIFF_STATUS_FILTER_AON];
   break;
  }
 }

 for (i = 0; (optch = optarg[i]) != '\0'; i++) {
  unsigned int bit;
  int negate;

  if ('a' <= optch && optch <= 'z') {
   negate = 1;
   optch = toupper(optch);
  } else {
   negate = 0;
  }

  bit = (0 <= optch && optch <= 'Z') ? filter_bit[optch] : 0;
  if (!bit)
   return error(_("unknown change class '%c' in --diff-filter=%s"),
         optarg[i], optarg);
  if (negate)
   opt->filter &= ~bit;
  else
   opt->filter |= bit;
 }
 return 0;
}
