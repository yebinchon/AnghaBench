
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int GIT_EBUFS ;
 int GIT_ERROR_NET ;
 int PKT_LEN_SIZE ;
 int git__strntol32 (scalar_t__*,char*,int,char const**,int) ;
 int git_error_set (int ,char*,char*) ;
 int isprint (char) ;
 int isxdigit (char) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int parse_len(size_t *out, const char *line, size_t linelen)
{
 char num[PKT_LEN_SIZE + 1];
 int i, k, error;
 int32_t len;
 const char *num_end;


 if (linelen < PKT_LEN_SIZE)
  return GIT_EBUFS;

 memcpy(num, line, PKT_LEN_SIZE);
 num[PKT_LEN_SIZE] = '\0';

 for (i = 0; i < PKT_LEN_SIZE; ++i) {
  if (!isxdigit(num[i])) {

   for (k = 0; k < PKT_LEN_SIZE; ++k) {
    if(!isprint(num[k])) {
     num[k] = '.';
    }
   }

   git_error_set(GIT_ERROR_NET, "invalid hex digit in length: '%s'", num);
   return -1;
  }
 }

 if ((error = git__strntol32(&len, num, PKT_LEN_SIZE, &num_end, 16)) < 0)
  return error;

 if (len < 0)
  return -1;

 *out = (size_t) len;
 return 0;
}
