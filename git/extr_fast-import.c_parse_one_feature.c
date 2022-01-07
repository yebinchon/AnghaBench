
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int force_update ;
 int option_date_format (char const*) ;
 int option_export_marks (char const*) ;
 int option_import_marks (char const*,int,int) ;
 int relative_marks_paths ;
 int require_explicit_termination ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_one_feature(const char *feature, int from_stream)
{
 const char *arg;

 if (skip_prefix(feature, "date-format=", &arg)) {
  option_date_format(arg);
 } else if (skip_prefix(feature, "import-marks=", &arg)) {
  option_import_marks(arg, from_stream, 0);
 } else if (skip_prefix(feature, "import-marks-if-exists=", &arg)) {
  option_import_marks(arg, from_stream, 1);
 } else if (skip_prefix(feature, "export-marks=", &arg)) {
  option_export_marks(arg);
 } else if (!strcmp(feature, "alias")) {
  ;
 } else if (!strcmp(feature, "get-mark")) {
  ;
 } else if (!strcmp(feature, "cat-blob")) {
  ;
 } else if (!strcmp(feature, "relative-marks")) {
  relative_marks_paths = 1;
 } else if (!strcmp(feature, "no-relative-marks")) {
  relative_marks_paths = 0;
 } else if (!strcmp(feature, "done")) {
  require_explicit_termination = 1;
 } else if (!strcmp(feature, "force")) {
  force_update = 1;
 } else if (!strcmp(feature, "notes") || !strcmp(feature, "ls")) {
  ;
 } else {
  return 0;
 }

 return 1;
}
