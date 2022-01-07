
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* id; } ;
typedef TYPE_1__ git_oid ;


 size_t GIT_OID_HEXSZ ;
 char* fmt_one (char*,int) ;
 int memset (char*,int ,size_t) ;
 int * to_hex ;

void git_oid_nfmt(char *str, size_t n, const git_oid *oid)
{
 size_t i, max_i;

 if (!oid) {
  memset(str, 0, n);
  return;
 }
 if (n > GIT_OID_HEXSZ) {
  memset(&str[GIT_OID_HEXSZ], 0, n - GIT_OID_HEXSZ);
  n = GIT_OID_HEXSZ;
 }

 max_i = n / 2;

 for (i = 0; i < max_i; i++)
  str = fmt_one(str, oid->id[i]);

 if (n & 1)
  *str++ = to_hex[oid->id[i] >> 4];
}
