
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_mode; } ;


 int DT_DIR ;
 int DT_LNK ;
 int DT_REG ;
 int DT_UNKNOWN ;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;
 scalar_t__ S_ISREG (unsigned int) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static inline int ce_to_dtype(const struct cache_entry *ce)
{
 unsigned ce_mode = ntohl(ce->ce_mode);
 if (S_ISREG(ce_mode))
  return DT_REG;
 else if (S_ISDIR(ce_mode) || S_ISGITLINK(ce_mode))
  return DT_DIR;
 else if (S_ISLNK(ce_mode))
  return DT_LNK;
 else
  return DT_UNKNOWN;
}
