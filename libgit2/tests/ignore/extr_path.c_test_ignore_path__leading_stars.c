
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__leading_stars(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "*/onestar\n"
  "**/twostars\n"
  "*/parent1/kid1/*\n"
  "**/parent2/kid2/*\n");

 assert_is_ignored(1, "dir1/onestar");
 assert_is_ignored(1, "dir1/onestar/child");
 assert_is_ignored(0, "dir1/dir2/onestar");

 assert_is_ignored(1, "dir1/twostars");
 assert_is_ignored(1, "dir1/twostars/child");
 assert_is_ignored(1, "dir1/dir2/twostars");
 assert_is_ignored(1, "dir1/dir2/twostars/child");
 assert_is_ignored(1, "dir1/dir2/dir3/twostars");

 assert_is_ignored(1, "dir1/parent1/kid1/file");
 assert_is_ignored(1, "dir1/parent1/kid1/file/inside/parent");
 assert_is_ignored(0, "dir1/dir2/parent1/kid1/file");
 assert_is_ignored(0, "dir1/parent1/file");
 assert_is_ignored(0, "dir1/kid1/file");

 assert_is_ignored(1, "dir1/parent2/kid2/file");
 assert_is_ignored(1, "dir1/parent2/kid2/file/inside/parent");
 assert_is_ignored(1, "dir1/dir2/parent2/kid2/file");
 assert_is_ignored(1, "dir1/dir2/dir3/parent2/kid2/file");
 assert_is_ignored(0, "dir1/parent2/file");
 assert_is_ignored(0, "dir1/kid2/file");
}
