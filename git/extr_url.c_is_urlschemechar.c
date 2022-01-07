
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;

int is_urlschemechar(int first_flag, int ch)
{







 int alphanumeric, special;
 alphanumeric = ch > 0 && isalnum(ch);
 special = ch == '+' || ch == '-' || ch == '.';
 return alphanumeric || (!first_flag && special);
}
