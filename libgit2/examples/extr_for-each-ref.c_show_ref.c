
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int GIT_OID_HEXSZ ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int check_lg2 (int ,char*,char*) ;
 int git_object_lookup (int **,int *,int const*,int ) ;
 int git_object_type (int *) ;
 char* git_object_type2string (int ) ;
 int git_oid_fmt (char*,int const*) ;
 int git_reference_free (int *) ;
 char* git_reference_name (int *) ;
 int git_reference_resolve (int **,int *) ;
 int * git_reference_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static int show_ref(git_reference *ref, void *data)
{
        git_repository *repo = data;
        git_reference *resolved = ((void*)0);
        char hex[GIT_OID_HEXSZ+1];
        const git_oid *oid;
        git_object *obj;

        if (git_reference_type(ref) == GIT_REFERENCE_SYMBOLIC)
                check_lg2(git_reference_resolve(&resolved, ref),
                          "Unable to resolve symbolic reference",
                          git_reference_name(ref));

        oid = git_reference_target(resolved ? resolved : ref);
        git_oid_fmt(hex, oid);
        hex[GIT_OID_HEXSZ] = 0;
        check_lg2(git_object_lookup(&obj, repo, oid, GIT_OBJECT_ANY),
                  "Unable to lookup object", hex);

        printf("%s %-6s\t%s\n",
               hex,
               git_object_type2string(git_object_type(obj)),
               git_reference_name(ref));

        if (resolved)
                git_reference_free(resolved);
        return 0;
}
