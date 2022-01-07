
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_errx (int,char*,int) ;

__attribute__((used)) static void
errx_fn(void)
{
 event_errx(2, "Fatal error; too many kumquats (%d)", 5);
}
