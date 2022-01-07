
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 int read_from_oldmem (char*,size_t,int *,int ,int ) ;
 int sev_active () ;

ssize_t elfcorehdr_read(char *buf, size_t count, u64 *ppos)
{
 return read_from_oldmem(buf, count, ppos, 0, sev_active());
}
