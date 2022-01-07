
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_BARE ;
 long long FLAG_DEFAULT_CONSTRUCTOR ;
 int wint (int) ;

void write_type_flags (long long flags) {
  int new_flags = 0;
  if (flags & 1) {
    new_flags |= FLAG_BARE;
  }
  if (flags & FLAG_DEFAULT_CONSTRUCTOR) {
    new_flags |= FLAG_DEFAULT_CONSTRUCTOR;
  }
  wint (new_flags);
}
