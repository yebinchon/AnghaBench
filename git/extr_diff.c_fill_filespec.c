
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct diff_filespec {int oid_valid; int oid; int mode; } ;


 int canon_mode (unsigned short) ;
 int oidcpy (int *,struct object_id const*) ;

void fill_filespec(struct diff_filespec *spec, const struct object_id *oid,
     int oid_valid, unsigned short mode)
{
 if (mode) {
  spec->mode = canon_mode(mode);
  oidcpy(&spec->oid, oid);
  spec->oid_valid = oid_valid;
 }
}
