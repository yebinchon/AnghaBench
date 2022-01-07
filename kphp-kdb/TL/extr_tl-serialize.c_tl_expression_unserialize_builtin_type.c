
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double d; int i; long long l; char* s; } ;
struct tl_scheme_object {TYPE_1__ u; } ;
struct tl_compiler {int dummy; } ;


 int CODE_double ;
 int CODE_int ;
 int CODE_long ;
 int CODE_string ;
 int isupper (char const) ;
 int strcmp (char const*,char*) ;
 int tl_failf (struct tl_compiler*,char*,...) ;
 int tl_fetch_string (int*,int,char**,int *,int) ;
 struct tl_scheme_object* tl_scheme_object_new (int ) ;
 int tlso_double ;
 int tlso_int ;
 int tlso_long ;
 int tlso_str ;
 int tolower (char const) ;

int tl_expression_unserialize_builtin_type (struct tl_compiler *C, int *input, int ilen, const char *name, struct tl_scheme_object **R) {
  if (name == ((void*)0)) {
    return 0;
  }
  int i = 0;
  switch (tolower (name[0])) {
    case 'd':
      if (!strcmp (name + 1, "ouble")) {
        if (isupper (name[0])) {
          if (i >= ilen) {
            return tl_failf (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_double) {
            return tl_failf (C, "unserialize Double failed, expected magic 0x%08x but 0x%08x found", CODE_double, input[i]);
          }
          i++;
        }
        if (i >= ilen - 1) {
          return tl_failf (C, "not enough input to unserialize %s", name);
        }
        *R = tl_scheme_object_new (tlso_double);
        (*R)->u.d = *((double *) &input[i]);
        i += 2;
        return i;
      }
    break;
    case 'i':
      if (!strcmp (name + 1, "nt")) {
        if (isupper (name[0])) {
          if (i >= ilen) {
            return tl_failf (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_int) {
            return tl_failf (C, "unserialize Int failed, expected magic 0x%08x but 0x%08x found", CODE_int, input[i]);
          }
          i++;
        }
        if (i >= ilen) {
          return tl_failf (C, "not enough input to unserialize %s", name);
        }
        *R = tl_scheme_object_new (tlso_int);
        (*R)->u.i = input[i++];
        return i;
      }
    break;
    case 'l':
      if (!strcmp (name + 1, "ong")) {
        if (isupper (name[0])) {
          if (i >= ilen) {
            return tl_failf (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_long) {
            return tl_failf (C, "unserialize Long failed, expected magic 0x%08x but 0x%08x found", CODE_long, input[i]);
          }
          i++;
        }
        if (i >= ilen - 1) {
          return tl_failf (C, "not enough input to unserialize %s", name);
        }
        *R = tl_scheme_object_new (tlso_long);
        (*R)->u.l = *((long long *) &input[i]);
        i += 2;
        return i;
      }
    break;
    case 's':
      if (!strcmp (name + 1, "tring")) {
        if (isupper (name[0])) {
          if (i >= ilen) {
            return tl_failf (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_string) {
            return tl_failf (C, "unserialize String failed, expected magic 0x%08x but 0x%08x found", CODE_string, input[i]);
          }
          i++;
        }
        if (i >= ilen) {
          return tl_failf (C, "not enough input to unserialize %s", name);
        }
        char *s;
        int l = tl_fetch_string (input + i, ilen - i, &s, ((void*)0), 1);
        if (l < 0) {
          return tl_failf (C, "tl_fetch_string fail");
        }
        *R = tl_scheme_object_new (tlso_str);
        (*R)->u.s = s;
        return i + l;
      }
    break;
  }
  return 0;
}
