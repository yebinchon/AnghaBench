
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offset; char sign; int time; } ;
struct TYPE_6__ {TYPE_1__ when; int * email; int * name; } ;
typedef TYPE_2__ git_signature ;


 void* extract_trimmed (char const*,int) ;
 int git__free (int *) ;
 char* git__memrchr (char const*,char,int) ;
 scalar_t__ git__strntol32 (int*,char const*,int,char const**,int) ;
 scalar_t__ git__strntol64 (int *,char const*,int,char const**,int) ;
 char* memchr (char const*,char,int) ;
 scalar_t__ memcmp (char const*,char const*,size_t const) ;
 int memset (TYPE_2__*,int ,int) ;
 int signature_error (char*) ;
 size_t strlen (char const*) ;

int git_signature__parse(git_signature *sig, const char **buffer_out,
  const char *buffer_end, const char *header, char ender)
{
 const char *buffer = *buffer_out;
 const char *email_start, *email_end;

 memset(sig, 0, sizeof(git_signature));

 if (ender &&
  (buffer_end = memchr(buffer, ender, buffer_end - buffer)) == ((void*)0))
  return signature_error("no newline given");

 if (header) {
  const size_t header_len = strlen(header);

  if (buffer + header_len >= buffer_end || memcmp(buffer, header, header_len) != 0)
   return signature_error("expected prefix doesn't match actual");

  buffer += header_len;
 }

 email_start = git__memrchr(buffer, '<', buffer_end - buffer);
 email_end = git__memrchr(buffer, '>', buffer_end - buffer);

 if (!email_start || !email_end || email_end <= email_start)
  return signature_error("malformed e-mail");

 email_start += 1;
 sig->name = extract_trimmed(buffer, email_start - buffer - 1);
 sig->email = extract_trimmed(email_start, email_end - email_start);


 if (email_end + 2 < buffer_end) {
  const char *time_start = email_end + 2;
  const char *time_end;

  if (git__strntol64(&sig->when.time, time_start,
       buffer_end - time_start, &time_end, 10) < 0) {
   git__free(sig->name);
   git__free(sig->email);
   sig->name = sig->email = ((void*)0);
   return signature_error("invalid Unix timestamp");
  }


  if (time_end + 1 < buffer_end) {
   int offset, hours, mins;
   const char *tz_start, *tz_end;

   tz_start = time_end + 1;

   if ((tz_start[0] != '-' && tz_start[0] != '+') ||
       git__strntol32(&offset, tz_start + 1,
        buffer_end - tz_start - 1, &tz_end, 10) < 0) {

    offset = 0;
   }

   hours = offset / 100;
   mins = offset % 100;





   if (hours <= 14 && mins <= 59) {
    sig->when.offset = (hours * 60) + mins;
    sig->when.sign = tz_start[0];
    if (tz_start[0] == '-')
     sig->when.offset = -sig->when.offset;
   }
  }
 }

 *buffer_out = buffer_end + 1;
 return 0;
}
