
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_BARE ;
 long long FLAG_EXCL ;
 long long FLAG_OPT_FIELD ;
 int FLAG_OPT_VAR ;
 int wint (int) ;

void write_field_flags (long long flags) {
  int new_flags = 0;

  if (flags & 1) {
    new_flags |= FLAG_BARE;
  }
  if (flags & 32) {
    new_flags |= FLAG_OPT_VAR;
  }
  if (flags & FLAG_EXCL) {
    new_flags |= FLAG_EXCL;
  }
  if (flags & FLAG_OPT_FIELD) {

    new_flags |= 2;
  }
  if (flags & (1 << 21)) {
    new_flags |= 4;
  }
  wint (new_flags);
}
