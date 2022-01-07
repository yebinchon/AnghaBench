
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REVPARSE_MERGE_BASE ;
 int GIT_REVPARSE_RANGE ;
 int GIT_REVPARSE_SINGLE ;
 int test_id (char*,char*,char*,int) ;
 int test_invalid_revspec (char*) ;

void test_refs_revparse__parses_range_operator(void)
{
 test_id("HEAD", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", ((void*)0), GIT_REVPARSE_SINGLE);
 test_id("HEAD~3..HEAD",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  GIT_REVPARSE_RANGE);

 test_id("HEAD~3...HEAD",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  GIT_REVPARSE_RANGE | GIT_REVPARSE_MERGE_BASE);

 test_id("HEAD~3..",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  GIT_REVPARSE_RANGE);

 test_id("HEAD~3...",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  GIT_REVPARSE_RANGE | GIT_REVPARSE_MERGE_BASE);

 test_id("..HEAD~3",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  GIT_REVPARSE_RANGE);

 test_id("...HEAD~3",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  GIT_REVPARSE_RANGE | GIT_REVPARSE_MERGE_BASE);

 test_id("...",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  GIT_REVPARSE_RANGE | GIT_REVPARSE_MERGE_BASE);

 test_invalid_revspec("..");
}
