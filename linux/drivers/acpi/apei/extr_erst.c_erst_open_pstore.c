
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_info {int dummy; } ;


 int ENODEV ;
 scalar_t__ erst_disable ;
 int erst_get_record_id_begin (int *) ;
 int reader_pos ;

__attribute__((used)) static int erst_open_pstore(struct pstore_info *psi)
{
 int rc;

 if (erst_disable)
  return -ENODEV;

 rc = erst_get_record_id_begin(&reader_pos);

 return rc;
}
