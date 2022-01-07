
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_BARE ;
 int TL_ERROR (char*) ;
 int assert (int) ;
 int wint (int) ;

void write_var_type_flags (long long flags) {
  int new_flags = 0;
  if (flags & 1) {
    new_flags |= FLAG_BARE;
  }
  if (new_flags & FLAG_BARE) {
    TL_ERROR ("Sorry, bare vars are not (yet ?) supported.\n");
    assert (!(new_flags & FLAG_BARE));
  }
  wint (new_flags);
}
