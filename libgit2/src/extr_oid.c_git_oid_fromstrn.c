
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* id; } ;
typedef TYPE_1__ git_oid ;


 size_t GIT_OID_HEXSZ ;
 int GIT_OID_RAWSZ ;
 int assert (int) ;
 int git__fromhex (char const) ;
 int memset (unsigned char*,int ,int ) ;
 int oid_error_invalid (char*) ;

int git_oid_fromstrn(git_oid *out, const char *str, size_t length)
{
 size_t p;
 int v;

 assert(out && str);

 if (!length)
  return oid_error_invalid("too short");

 if (length > GIT_OID_HEXSZ)
  return oid_error_invalid("too long");

 memset(out->id, 0, GIT_OID_RAWSZ);

 for (p = 0; p < length; p++) {
  v = git__fromhex(str[p]);
  if (v < 0)
   return oid_error_invalid("contains invalid characters");

  out->id[p / 2] |= (unsigned char)(v << (p % 2 ? 0 : 4));
 }

 return 0;
}
