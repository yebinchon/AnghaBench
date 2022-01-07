
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int,int) ;
 int rc ;

__attribute__((used)) static void report_error(const char *class, int ch)
{
 printf("%s classifies char %d (0x%02x) wrongly\n", class, ch, ch);
 rc = 1;
}
