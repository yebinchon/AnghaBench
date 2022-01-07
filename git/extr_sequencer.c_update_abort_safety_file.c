
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int file_exists (int ) ;
 int get_oid (char*,struct object_id*) ;
 int git_path_abort_safety_file () ;
 int git_path_seq_dir () ;
 char* oid_to_hex (struct object_id*) ;
 int write_file (int ,char*,char*) ;

__attribute__((used)) static void update_abort_safety_file(void)
{
 struct object_id head;


 if (!file_exists(git_path_seq_dir()))
  return;

 if (!get_oid("HEAD", &head))
  write_file(git_path_abort_safety_file(), "%s", oid_to_hex(&head));
 else
  write_file(git_path_abort_safety_file(), "%s", "");
}
