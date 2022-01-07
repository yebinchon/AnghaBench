
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;


 unsigned char ASN1_GENTIM ;
 unsigned char ASN1_UNITIM ;
 int DD2bin (unsigned char const*) ;
 int EBADMSG ;
 int mktime64 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int pr_debug (char*,unsigned char,int,unsigned char const*) ;

int x509_decode_time(time64_t *_t, size_t hdrlen,
       unsigned char tag,
       const unsigned char *value, size_t vlen)
{
 static const unsigned char month_lengths[] = { 31, 28, 31, 30, 31, 30,
             31, 31, 30, 31, 30, 31 };
 const unsigned char *p = value;
 unsigned year, mon, day, hour, min, sec, mon_len;




 if (tag == ASN1_UNITIM) {

  if (vlen != 13)
   goto unsupported_time;
  year = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
  if (year >= 50)
   year += 1900;
  else
   year += 2000;
 } else if (tag == ASN1_GENTIM) {

  if (vlen != 15)
   goto unsupported_time;
  year = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; }) * 100 + ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
  if (year >= 1950 && year <= 2049)
   goto invalid_time;
 } else {
  goto unsupported_time;
 }

 mon = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
 day = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
 hour = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
 min = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });
 sec = ({ unsigned x = ({ unsigned char x = (p[0]) - '0'; if (x > 9) goto invalid_time; x; }) * 10 + ({ unsigned char x = (p[1]) - '0'; if (x > 9) goto invalid_time; x; }); p += 2; x; });

 if (*p != 'Z')
  goto unsupported_time;

 if (year < 1970 ||
     mon < 1 || mon > 12)
  goto invalid_time;

 mon_len = month_lengths[mon - 1];
 if (mon == 2) {
  if (year % 4 == 0) {
   mon_len = 29;
   if (year % 100 == 0) {
    mon_len = 28;
    if (year % 400 == 0)
     mon_len = 29;
   }
  }
 }

 if (day < 1 || day > mon_len ||
     hour > 24 ||
     min > 59 ||
     sec > 60)
  goto invalid_time;

 *_t = mktime64(year, mon, day, hour, min, sec);
 return 0;

unsupported_time:
 pr_debug("Got unsupported time [tag %02x]: '%*phN'\n",
   tag, (int)vlen, value);
 return -EBADMSG;
invalid_time:
 pr_debug("Got invalid time [tag %02x]: '%*phN'\n",
   tag, (int)vlen, value);
 return -EBADMSG;
}
