
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN68XX ;
 int OCTEON_CN7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_helper_get_number_of_interfaces(void)
{
 if (OCTEON_IS_MODEL(OCTEON_CN68XX))
  return 9;
 if (OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN52XX))
  return 4;
 if (OCTEON_IS_MODEL(OCTEON_CN7XXX))
  return 5;
 else
  return 3;
}
