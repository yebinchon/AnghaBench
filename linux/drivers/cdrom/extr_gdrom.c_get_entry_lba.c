
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GD_SESSION_OFFSET ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static int get_entry_lba(int track)
{
 return (cpu_to_be32(track & 0xffffff00) - GD_SESSION_OFFSET);
}
