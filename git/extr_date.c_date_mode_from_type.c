
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct date_mode {int type; scalar_t__ local; } ;
typedef enum date_mode_type { ____Placeholder_date_mode_type } date_mode_type ;


 int BUG (char*) ;
 int DATE_STRFTIME ;

struct date_mode *date_mode_from_type(enum date_mode_type type)
{
 static struct date_mode mode;
 if (type == DATE_STRFTIME)
  BUG("cannot create anonymous strftime date_mode struct");
 mode.type = type;
 mode.local = 0;
 return &mode;
}
