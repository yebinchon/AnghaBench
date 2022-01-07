
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
struct TYPE_5__ {unsigned int rule_bits; int exclude_default; int loosens_error; } ;
struct TYPE_4__ {char* value; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 struct attr_check* attr_check_initl (char*,int *) ;
 int git_check_attr (struct index_state*,char const*,struct attr_check*) ;
 int parse_whitespace_rule (char const*) ;
 int whitespace_rule_cfg ;
 TYPE_2__* whitespace_rule_names ;
 int ws_tab_width (int) ;

unsigned whitespace_rule(struct index_state *istate, const char *pathname)
{
 static struct attr_check *attr_whitespace_rule;
 const char *value;

 if (!attr_whitespace_rule)
  attr_whitespace_rule = attr_check_initl("whitespace", ((void*)0));

 git_check_attr(istate, pathname, attr_whitespace_rule);
 value = attr_whitespace_rule->items[0].value;
 if (ATTR_TRUE(value)) {

  unsigned all_rule = ws_tab_width(whitespace_rule_cfg);
  int i;
  for (i = 0; i < ARRAY_SIZE(whitespace_rule_names); i++)
   if (!whitespace_rule_names[i].loosens_error &&
       !whitespace_rule_names[i].exclude_default)
    all_rule |= whitespace_rule_names[i].rule_bits;
  return all_rule;
 } else if (ATTR_FALSE(value)) {

  return ws_tab_width(whitespace_rule_cfg);
 } else if (ATTR_UNSET(value)) {

  return whitespace_rule_cfg;
 } else {

  return parse_whitespace_rule(value);
 }
}
