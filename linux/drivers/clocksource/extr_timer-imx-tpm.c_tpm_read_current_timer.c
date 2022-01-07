
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tpm_read_counter () ;

__attribute__((used)) static unsigned long tpm_read_current_timer(void)
{
 return tpm_read_counter();
}
