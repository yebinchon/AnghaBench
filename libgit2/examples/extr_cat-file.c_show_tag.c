
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oidstr ;
typedef int git_tag ;


 int GIT_OID_HEXSZ ;
 char* git_object_type2string (int ) ;
 int git_oid_tostr (char*,int,int ) ;
 char* git_tag_message (int const*) ;
 char* git_tag_name (int const*) ;
 int git_tag_tagger (int const*) ;
 int git_tag_target_id (int const*) ;
 int git_tag_target_type (int const*) ;
 int print_signature (char*,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void show_tag(const git_tag *tag)
{
 char oidstr[GIT_OID_HEXSZ + 1];

 git_oid_tostr(oidstr, sizeof(oidstr), git_tag_target_id(tag));;
 printf("object %s\n", oidstr);
 printf("type %s\n", git_object_type2string(git_tag_target_type(tag)));
 printf("tag %s\n", git_tag_name(tag));
 print_signature("tagger", git_tag_tagger(tag));

 if (git_tag_message(tag))
  printf("\n%s\n", git_tag_message(tag));
}
