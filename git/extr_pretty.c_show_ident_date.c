
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct ident_split {scalar_t__ tz_begin; scalar_t__ tz_end; scalar_t__ date_begin; scalar_t__ date_end; } ;
struct date_mode {int dummy; } ;


 long INT_MAX ;
 long INT_MIN ;
 scalar_t__ date_overflows (scalar_t__) ;
 scalar_t__ parse_timestamp (scalar_t__,int *,int) ;
 char const* show_date (scalar_t__,long,struct date_mode const*) ;
 long strtol (scalar_t__,int *,int) ;

const char *show_ident_date(const struct ident_split *ident,
       const struct date_mode *mode)
{
 timestamp_t date = 0;
 long tz = 0;

 if (ident->date_begin && ident->date_end)
  date = parse_timestamp(ident->date_begin, ((void*)0), 10);
 if (date_overflows(date))
  date = 0;
 else {
  if (ident->tz_begin && ident->tz_end)
   tz = strtol(ident->tz_begin, ((void*)0), 10);
  if (tz >= INT_MAX || tz <= INT_MIN)
   tz = 0;
 }
 return show_date(date, tz, mode);
}
