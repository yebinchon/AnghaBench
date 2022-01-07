
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IWUSR ;
 int S_IXUSR ;
 int get_shared_repository () ;

__attribute__((used)) static int calc_shared_perm(int mode)
{
 int tweak;

 if (get_shared_repository() < 0)
  tweak = -get_shared_repository();
 else
  tweak = get_shared_repository();

 if (!(mode & S_IWUSR))
  tweak &= ~0222;
 if (mode & S_IXUSR)

  tweak |= (tweak & 0444) >> 2;
 if (get_shared_repository() < 0)
  mode = (mode & ~0777) | tweak;
 else
  mode |= tweak;

 return mode;
}
