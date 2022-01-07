
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*) ;

__attribute__((used)) static void reset_intr(void)
{
 pr_info("weird, reset interrupt called\n");
}
