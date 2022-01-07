
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long XDF_IGNORE_CR_AT_EOL ;
 long XDF_IGNORE_WHITESPACE ;
 long XDF_IGNORE_WHITESPACE_AT_EOL ;
 long XDF_IGNORE_WHITESPACE_CHANGE ;
 long XDF_WHITESPACE_FLAGS ;
 scalar_t__ XDL_ISSPACE (char const) ;

__attribute__((used)) static unsigned long xdl_hash_record_with_whitespace(char const **data,
  char const *top, long flags) {
 unsigned long ha = 5381;
 char const *ptr = *data;
 int cr_at_eol_only = (flags & XDF_WHITESPACE_FLAGS) == XDF_IGNORE_CR_AT_EOL;

 for (; ptr < top && *ptr != '\n'; ptr++) {
  if (cr_at_eol_only) {

   if (*ptr == '\r' &&
       (ptr + 1 < top && ptr[1] == '\n'))
    continue;
  }
  else if (XDL_ISSPACE(*ptr)) {
   const char *ptr2 = ptr;
   int at_eol;
   while (ptr + 1 < top && XDL_ISSPACE(ptr[1])
     && ptr[1] != '\n')
    ptr++;
   at_eol = (top <= ptr + 1 || ptr[1] == '\n');
   if (flags & XDF_IGNORE_WHITESPACE)
    ;
   else if (flags & XDF_IGNORE_WHITESPACE_CHANGE
     && !at_eol) {
    ha += (ha << 5);
    ha ^= (unsigned long) ' ';
   }
   else if (flags & XDF_IGNORE_WHITESPACE_AT_EOL
     && !at_eol) {
    while (ptr2 != ptr + 1) {
     ha += (ha << 5);
     ha ^= (unsigned long) *ptr2;
     ptr2++;
    }
   }
   continue;
  }
  ha += (ha << 5);
  ha ^= (unsigned long) *ptr;
 }
 *data = ptr < top ? ptr + 1: ptr;

 return ha;
}
