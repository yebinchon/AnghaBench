
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_ASSERT (int) ;
 int EVUTIL_ISALNUM_ (char const) ;
 int EVUTIL_ISALPHA_ (char const) ;

__attribute__((used)) static int
scheme_ok(const char *s, const char *eos)
{

 EVUTIL_ASSERT(eos >= s);
 if (s == eos)
  return 0;
 if (!EVUTIL_ISALPHA_(*s))
  return 0;
 while (++s < eos) {
  if (! EVUTIL_ISALNUM_(*s) &&
      *s != '+' && *s != '-' && *s != '.')
   return 0;
 }
 return 1;
}
