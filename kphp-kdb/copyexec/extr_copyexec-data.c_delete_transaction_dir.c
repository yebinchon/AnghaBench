
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_file (int ) ;
 scalar_t__ errno ;
 int transaction_dir ;
 int vkprintf (int,char*,int ,...) ;

__attribute__((used)) static void delete_transaction_dir (void) {
  vkprintf (3, "delete_transaction_dir (\"%s\")\n", transaction_dir);
  errno = 0;
  int r = delete_file (transaction_dir);
  if (r < 0) {
    vkprintf (1, "delete_file (\"%s\") returns error code %d. %m\n", transaction_dir, r);
  }
}
