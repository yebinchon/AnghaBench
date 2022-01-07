
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int assert (int) ;
 char* po_olddir ;
 int replace_char (char*,char,char) ;
 int snprintf (char*,int,char*,char*,char const*,int,int ) ;
 int strcpy (char*,char const* const) ;
 int strlen (char const*) ;

__attribute__((used)) static void compute_temporary_filename (int transaction_id, int *transaction_file_no, const char *const name, char out[PATH_MAX]) {
  const int MAX_PREFIX_LENGTH = 64;
  char tmp_name[PATH_MAX];
  strcpy (tmp_name, name);
  replace_char (tmp_name, '/', '$');
  const char *p = tmp_name, *q = p + strlen (p);
  if (q - p >= MAX_PREFIX_LENGTH) { p = q - MAX_PREFIX_LENGTH; }
  assert (snprintf (out, PATH_MAX, "%s/%s.%d.%d", po_olddir, p, transaction_id, (*transaction_file_no)++) < PATH_MAX);
}
