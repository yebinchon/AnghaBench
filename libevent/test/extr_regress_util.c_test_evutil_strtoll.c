
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_int64_t ;


 scalar_t__ evutil_strtoll (char const*,char**,int) ;
 int tt_want (int) ;

__attribute__((used)) static void
test_evutil_strtoll(void *ptr)
{
 const char *s;
 char *endptr;

 tt_want(evutil_strtoll("5000000000", ((void*)0), 10) ==
  ((ev_int64_t)5000000)*1000);
 tt_want(evutil_strtoll("-5000000000", ((void*)0), 10) ==
  ((ev_int64_t)5000000)*-1000);
 s = " 99999stuff";
 tt_want(evutil_strtoll(s, &endptr, 10) == (ev_int64_t)99999);
 tt_want(endptr == s+6);
 tt_want(evutil_strtoll("foo", ((void*)0), 10) == 0);
 }
