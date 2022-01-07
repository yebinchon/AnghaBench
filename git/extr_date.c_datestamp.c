
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct strbuf {int dummy; } ;


 int date_string (int,int,struct strbuf*) ;
 int localtime (int*) ;
 int time (int*) ;
 int tm_to_time_t (int ) ;

void datestamp(struct strbuf *out)
{
 time_t now;
 int offset;

 time(&now);

 offset = tm_to_time_t(localtime(&now)) - now;
 offset /= 60;

 date_string(now, offset, out);
}
