
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_STAT_X304 ;
 unsigned long __hypfs_sprp_diag304 (void*,unsigned long) ;
 int diag_stat_inc (int ) ;

__attribute__((used)) static unsigned long hypfs_sprp_diag304(void *data, unsigned long cmd)
{
 diag_stat_inc(DIAG_STAT_X304);
 return __hypfs_sprp_diag304(data, cmd);
}
