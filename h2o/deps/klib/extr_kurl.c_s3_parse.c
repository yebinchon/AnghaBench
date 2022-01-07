
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {int auth; int date; int url; int member_1; int member_0; } ;
typedef TYPE_1__ s3aux_t ;
struct TYPE_6__ {int s; scalar_t__ l; scalar_t__ m; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ kstring_t ;


 int gmtime_r (int *,struct tm*) ;
 int kputsn (char const*,int,TYPE_2__*) ;
 char* s3_read_awssecret (char const*) ;
 int s3_sign (char const*,int ,char*) ;
 int strftime (char*,int,char*,int ) ;
 int strlen (char const*) ;
 char const* strstr (char const*,char*) ;
 int time (int ) ;

s3aux_t s3_parse(const char *url, const char *_id, const char *_secret, const char *fn_secret)
{
 const char *id, *secret, *bucket, *obj;
 char *id_secret = 0, date[64], sig[29];
 time_t t;
 struct tm tmt;
 s3aux_t a = {0,0};
 kstring_t str = {0,0,0};

 if (strstr(url, "s3://") != url) return a;
 bucket = url + 5;
 for (obj = bucket; *obj && *obj != '/'; ++obj);
 if (*obj == 0) return a;

 if (_id == 0 || _secret == 0) {
  id_secret = s3_read_awssecret(fn_secret);
  if (id_secret == 0) return a;
  id = id_secret;
  secret = id_secret + strlen(id) + 1;
 } else id = _id, secret = _secret;

 kputsn("https://", 8, &str);
 kputsn(bucket, obj - bucket, &str);
 kputsn(".s3.amazonaws.com", 17, &str);
 kputsn(obj, strlen(obj), &str);
 a.url = str.s;

 str.l = str.m = 0; str.s = 0;
 t = time(0);
 strftime(date, 64, "%a, %d %b %Y %H:%M:%S +0000", gmtime_r(&t, &tmt));
 kputsn("Date: ", 6, &str);
 kputsn(date, strlen(date), &str);
 a.date = str.s;

 str.l = str.m = 0; str.s = 0;
 kputsn("GET\n\n\n", 6, &str);
 kputsn(date, strlen(date), &str);
 kputsn("\n", 1, &str);
 kputsn(bucket-1, strlen(bucket-1), &str);
 s3_sign(secret, str.s, sig);

 str.l = 0;
 kputsn("Authorization: AWS ", 19, &str);
 kputsn(id, strlen(id), &str);
 kputsn(":", 1, &str);
 kputsn(sig, strlen(sig), &str);
 a.auth = str.s;

 return a;
}
