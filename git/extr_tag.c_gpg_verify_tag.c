
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int DEFAULT_ABBREV ;
 int OBJ_TAG ;
 int error (char*,char const*,...) ;
 char const* find_unique_abbrev (struct object_id const*,int ) ;
 int free (char*) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int run_gpg_verify (char*,unsigned long,unsigned int) ;
 int the_repository ;
 char* type_name (int) ;

int gpg_verify_tag(const struct object_id *oid, const char *name_to_report,
  unsigned flags)
{
 enum object_type type;
 char *buf;
 unsigned long size;
 int ret;

 type = oid_object_info(the_repository, oid, ((void*)0));
 if (type != OBJ_TAG)
  return error("%s: cannot verify a non-tag object of type %s.",
    name_to_report ?
    name_to_report :
    find_unique_abbrev(oid, DEFAULT_ABBREV),
    type_name(type));

 buf = read_object_file(oid, &type, &size);
 if (!buf)
  return error("%s: unable to read file.",
    name_to_report ?
    name_to_report :
    find_unique_abbrev(oid, DEFAULT_ABBREV));

 ret = run_gpg_verify(buf, size, flags);

 free(buf);
 return ret;
}
