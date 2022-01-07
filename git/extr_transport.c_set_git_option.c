
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct git_transport_options {char const* uploadpack; char const* receivepack; int thin; int followtags; int keep; int update_shallow; char const* deepen_since; int deepen_relative; int from_promisor; int no_dependents; int filter_options; struct string_list const* deepen_not; scalar_t__ depth; } ;


 int TRANS_OPT_DEEPEN_NOT ;
 int TRANS_OPT_DEEPEN_RELATIVE ;
 int TRANS_OPT_DEEPEN_SINCE ;
 int TRANS_OPT_DEPTH ;
 int TRANS_OPT_FOLLOWTAGS ;
 int TRANS_OPT_FROM_PROMISOR ;
 int TRANS_OPT_KEEP ;
 int TRANS_OPT_LIST_OBJECTS_FILTER ;
 int TRANS_OPT_NO_DEPENDENTS ;
 int TRANS_OPT_RECEIVEPACK ;
 int TRANS_OPT_THIN ;
 int TRANS_OPT_UPDATE_SHALLOW ;
 int TRANS_OPT_UPLOADPACK ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int list_objects_filter_die_if_populated (int *) ;
 int parse_list_objects_filter (int *,char const*) ;
 int strcmp (char const*,int ) ;
 scalar_t__ strtol (char const*,char**,int ) ;

__attribute__((used)) static int set_git_option(struct git_transport_options *opts,
     const char *name, const char *value)
{
 if (!strcmp(name, TRANS_OPT_UPLOADPACK)) {
  opts->uploadpack = value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_RECEIVEPACK)) {
  opts->receivepack = value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_THIN)) {
  opts->thin = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_FOLLOWTAGS)) {
  opts->followtags = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_KEEP)) {
  opts->keep = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_UPDATE_SHALLOW)) {
  opts->update_shallow = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_DEPTH)) {
  if (!value)
   opts->depth = 0;
  else {
   char *end;
   opts->depth = strtol(value, &end, 0);
   if (*end)
    die(_("transport: invalid depth option '%s'"), value);
  }
  return 0;
 } else if (!strcmp(name, TRANS_OPT_DEEPEN_SINCE)) {
  opts->deepen_since = value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_DEEPEN_NOT)) {
  opts->deepen_not = (const struct string_list *)value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_DEEPEN_RELATIVE)) {
  opts->deepen_relative = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_FROM_PROMISOR)) {
  opts->from_promisor = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_NO_DEPENDENTS)) {
  opts->no_dependents = !!value;
  return 0;
 } else if (!strcmp(name, TRANS_OPT_LIST_OBJECTS_FILTER)) {
  list_objects_filter_die_if_populated(&opts->filter_options);
  parse_list_objects_filter(&opts->filter_options, value);
  return 0;
 }
 return 1;
}
