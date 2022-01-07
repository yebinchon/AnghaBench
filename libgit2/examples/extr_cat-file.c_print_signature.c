
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; scalar_t__ time; } ;
struct TYPE_5__ {char* name; char* email; TYPE_1__ when; } ;
typedef TYPE_2__ git_signature ;


 int printf (char*,char const*,char*,char*,long,char,int,int) ;

__attribute__((used)) static void print_signature(const char *header, const git_signature *sig)
{
 char sign;
 int offset, hours, minutes;

 if (!sig)
  return;

 offset = sig->when.offset;
 if (offset < 0) {
  sign = '-';
  offset = -offset;
 } else {
  sign = '+';
 }

 hours = offset / 60;
 minutes = offset % 60;

 printf("%s %s <%s> %ld %c%02d%02d\n",
     header, sig->name, sig->email, (long)sig->when.time,
     sign, hours, minutes);
}
