
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_year; int tm_mon; scalar_t__ tm_mday; int tm_wday; } ;


 int H2O_TIMESTR_RFC1123_LEN ;
 int assert (int) ;
 char* emit_digits (char*,scalar_t__,int) ;
 char* emit_mon (char*,int ) ;
 char* emit_wday (char*,int ) ;
 int memcpy (char*,char*,int) ;

void h2o_time2str_rfc1123(char *buf, struct tm *gmt)
{
    char *p = buf;


    p = emit_wday(p, gmt->tm_wday);
    *p++ = ',';
    *p++ = ' ';
    p = emit_digits(p, gmt->tm_mday, 2);
    *p++ = ' ';
    p = emit_mon(p, gmt->tm_mon);
    *p++ = ' ';
    p = emit_digits(p, gmt->tm_year + 1900, 4);
    *p++ = ' ';
    p = emit_digits(p, gmt->tm_hour, 2);
    *p++ = ':';
    p = emit_digits(p, gmt->tm_min, 2);
    *p++ = ':';
    p = emit_digits(p, gmt->tm_sec, 2);
    memcpy(p, " GMT", 4);
    p += 4;
    *p = '\0';

    assert(p - buf == H2O_TIMESTR_RFC1123_LEN);
}
