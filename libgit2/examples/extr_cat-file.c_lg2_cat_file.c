
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {char* member_0; int action; scalar_t__ verbose; int * rev; int member_3; int member_2; int * member_1; } ;
typedef int oidstr ;
typedef int git_tree ;
typedef int git_tag ;
typedef int git_repository ;
typedef int git_odb_object ;
typedef int git_odb ;
typedef int git_object ;
typedef int git_commit ;
typedef int git_blob ;






 int GIT_OID_HEXSZ ;




 int check_lg2 (int ,char*,int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_type (int *) ;
 char* git_object_type2string (int ) ;
 int git_odb_free (int *) ;
 int git_odb_object_free (int *) ;
 scalar_t__ git_odb_object_size (int *) ;
 int git_odb_read (int **,int *,int ) ;
 int git_oid_tostr (char*,int,int ) ;
 int git_repository_odb (int **,int *) ;
 int git_revparse_single (int **,int *,int *) ;
 int parse_opts (struct opts*,int,char**) ;
 int printf (char*,...) ;
 int show_blob (int const*) ;
 int show_commit (int const*) ;
 int show_tag (int const*) ;
 int show_tree (int const*) ;

int lg2_cat_file(git_repository *repo, int argc, char *argv[])
{
 struct opts o = { ".", ((void*)0), 0, 0 };
 git_object *obj = ((void*)0);
 char oidstr[GIT_OID_HEXSZ + 1];

 parse_opts(&o, argc, argv);

 check_lg2(git_revparse_single(&obj, repo, o.rev),
   "Could not resolve", o.rev);

 if (o.verbose) {
  char oidstr[GIT_OID_HEXSZ + 1];
  git_oid_tostr(oidstr, sizeof(oidstr), git_object_id(obj));

  printf("%s %s\n--\n",
   git_object_type2string(git_object_type(obj)), oidstr);
 }

 switch (o.action) {
 case 128:
  printf("%s\n", git_object_type2string(git_object_type(obj)));
  break;
 case 129: {
  git_odb *odb;
  git_odb_object *odbobj;

  check_lg2(git_repository_odb(&odb, repo), "Could not open ODB", ((void*)0));
  check_lg2(git_odb_read(&odbobj, odb, git_object_id(obj)),
   "Could not find obj", ((void*)0));

  printf("%ld\n", (long)git_odb_object_size(odbobj));

  git_odb_object_free(odbobj);
  git_odb_free(odb);
  }
  break;
 case 131:

  break;
 case 130:

  switch (git_object_type(obj)) {
  case 135:
   show_blob((const git_blob *)obj);
   break;
  case 134:
   show_commit((const git_commit *)obj);
   break;
  case 132:
   show_tree((const git_tree *)obj);
   break;
  case 133:
   show_tag((const git_tag *)obj);
   break;
  default:
   printf("unknown %s\n", oidstr);
   break;
  }
  break;
 }

 git_object_free(obj);

 return 0;
}
