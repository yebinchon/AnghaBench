
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graft {int nr_parent; int oid; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 char* oid_to_hex (int *) ;

__attribute__((used)) static int write_one_shallow(const struct commit_graft *graft, void *cb_data)
{
 FILE *fp = cb_data;
 if (graft->nr_parent == -1)
  fprintf(fp, "--shallow %s\n", oid_to_hex(&graft->oid));
 return 0;
}
