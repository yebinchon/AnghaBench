
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_poly1305 ;


 int TEST_CHECK (int) ;
 int cf_poly1305_finish (int *,int *) ;
 int cf_poly1305_init (int *,int *,int *) ;
 int cf_poly1305_update (int *,int *,size_t) ;
 scalar_t__ memcmp (int *,int *,int) ;
 size_t unhex (int *,int,char const*) ;

__attribute__((used)) static void check(const char *rstr, const char *sstr,
                  const char *msgstr, const char *tagstr)
{
  uint8_t r[16], s[16], tag[16];
  uint8_t msg[132], out[16];

  unhex(r, sizeof r, rstr);
  unhex(s, sizeof s, sstr);
  size_t nmsg = unhex(msg, sizeof msg, msgstr);
  unhex(tag, sizeof tag, tagstr);

  cf_poly1305 ctx;
  cf_poly1305_init(&ctx, r, s);
  cf_poly1305_update(&ctx, msg, nmsg);
  cf_poly1305_finish(&ctx, out);

  TEST_CHECK(memcmp(out, tag, 16) == 0);
}
