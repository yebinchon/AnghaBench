
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checkpoint_requested ;
 int skip_optional_lf () ;

__attribute__((used)) static void parse_checkpoint(void)
{
 checkpoint_requested = 1;
 skip_optional_lf();
}
