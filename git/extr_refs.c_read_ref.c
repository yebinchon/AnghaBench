
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int RESOLVE_REF_READING ;
 int read_ref_full (char const*,int ,struct object_id*,int *) ;

int read_ref(const char *refname, struct object_id *oid)
{
 return read_ref_full(refname, RESOLVE_REF_READING, oid, ((void*)0));
}
