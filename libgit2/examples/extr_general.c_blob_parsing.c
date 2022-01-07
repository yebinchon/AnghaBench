
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_blob ;


 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int *,int *) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void blob_parsing(git_repository *repo)
{
 git_blob *blob;
 git_oid oid;

 printf("\n*Blob Parsing*\n");

 git_oid_fromstr(&oid, "1385f264afb75a56a5bec74243be9b367ba4ca08");
 git_blob_lookup(&blob, repo, &oid);
 printf("Blob Size: %ld\n", (long)git_blob_rawsize(blob));
 git_blob_rawcontent(blob);




 git_blob_free(blob);
}
