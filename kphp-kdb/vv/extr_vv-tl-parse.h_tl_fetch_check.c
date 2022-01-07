
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TL_ERROR ;
 int TL_ERROR_INTERNAL ;
 int TL_ERROR_SYNTAX ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int TL_IN_TYPE ;
 int tl_fetch_set_error (char*,int ) ;
 int tl_fetch_set_error_format (int ,char*,int,int,int) ;

__attribute__((used)) static inline int tl_fetch_check (int nbytes) {
  if (!TL_IN_TYPE) {
    tl_fetch_set_error ("Trying to read from unitialized in buffer", TL_ERROR_INTERNAL);
    return -1;
  }
  if (nbytes >= 0) {
    if (TL_IN_REMAINING < nbytes) {
      tl_fetch_set_error_format (TL_ERROR_SYNTAX, "Trying to read %d bytes at position %d (size = %d)", nbytes, TL_IN_POS, TL_IN_POS + TL_IN_REMAINING);
      return -1;
    }
  } else {
    if (TL_IN_POS < -nbytes) {
      tl_fetch_set_error_format (TL_ERROR_SYNTAX, "Trying to read %d bytes at position %d (size = %d)", nbytes, TL_IN_POS, TL_IN_POS + TL_IN_REMAINING);
      return -1;
    }
  }
  if (TL_ERROR) {
    return -1;
  }
  return 0;
}
