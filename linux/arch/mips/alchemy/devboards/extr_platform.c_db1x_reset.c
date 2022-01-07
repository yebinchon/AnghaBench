
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_RESETS ;
 int BCSR_SYSTEM ;
 int bcsr_write (int ,int ) ;

__attribute__((used)) static void db1x_reset(char *c)
{
 bcsr_write(BCSR_RESETS, 0);
 bcsr_write(BCSR_SYSTEM, 0);
}
