
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_commit_body (char*,char*) ;

void test_commit_commit__body(void)
{
 assert_commit_body(((void*)0), "One-liner with no trailing newline");
 assert_commit_body(((void*)0), "One-liner with trailing newline\n");
 assert_commit_body(((void*)0), "\n\nTrimmed leading&trailing newlines\n\n");
 assert_commit_body("(There are more!)", "\nFirst paragraph only\n\n(There are more!)");
 assert_commit_body("(Yes, unwrapped!)", "\nFirst paragraph\nwith  unwrapped\ntrailing\tlines\n\n(Yes, unwrapped!)");
 assert_commit_body("are preserved", "\tLeading\n\ttabs\n\nare preserved");
 assert_commit_body("are preserved", " Leading\n Spaces\n\nare preserved");
 assert_commit_body(((void*)0), "Trailing tabs\tare removed\t\t");
 assert_commit_body(((void*)0), "Trailing spaces  are removed  ");
 assert_commit_body("are removed", "Trailing tabs\t\n\nare removed");
 assert_commit_body("are removed", "Trailing spaces \n\nare removed");
 assert_commit_body(((void*)0),"Newlines\nare\nreplaced by spaces\n");
 assert_commit_body(((void*)0) , "\n  Spaces after newlines\n  are\n  collapsed\n  ");
 assert_commit_body(((void*)0) , "  \nSpaces before newlines  \nare  \ncollapsed  \n");
 assert_commit_body(((void*)0) , "  \n  Spaces around newlines  \n  are  \n  collapsed  \n  ");
 assert_commit_body("collapsed" , "  \n  Trailing newlines  \n  are  \n\n  collapsed  \n  ");
 assert_commit_body(((void*)0), "  \n  Trailing spaces \n  are stripped \n\n  \n \t ");
 assert_commit_body(((void*)0) , "");
 assert_commit_body(((void*)0) , " ");
 assert_commit_body(((void*)0) , "\n");
 assert_commit_body(((void*)0) , "\n \n");
}
