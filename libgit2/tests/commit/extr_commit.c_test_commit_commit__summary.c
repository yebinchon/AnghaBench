
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_commit_summary (char*,char*) ;

void test_commit_commit__summary(void)
{
 assert_commit_summary("One-liner with no trailing newline", "One-liner with no trailing newline");
 assert_commit_summary("One-liner with trailing newline", "One-liner with trailing newline\n");
 assert_commit_summary("Trimmed leading&trailing newlines", "\n\nTrimmed leading&trailing newlines\n\n");
 assert_commit_summary("First paragraph only", "\nFirst paragraph only\n\n(There are more!)");
 assert_commit_summary("First paragraph with  unwrapped trailing\tlines", "\nFirst paragraph\nwith  unwrapped\ntrailing\tlines\n\n(Yes, unwrapped!)");
 assert_commit_summary("\tLeading tabs", "\tLeading\n\ttabs\n\nare preserved");
 assert_commit_summary(" Leading Spaces", " Leading\n Spaces\n\nare preserved");
 assert_commit_summary("Trailing tabs\tare removed", "Trailing tabs\tare removed\t\t");
 assert_commit_summary("Trailing spaces  are removed", "Trailing spaces  are removed  ");
 assert_commit_summary("Trailing tabs", "Trailing tabs\t\n\nare removed");
 assert_commit_summary("Trailing spaces", "Trailing spaces \n\nare removed");
 assert_commit_summary("Newlines are replaced by spaces", "Newlines\nare\nreplaced by spaces\n");
 assert_commit_summary("  Spaces after newlines are collapsed", "\n  Spaces after newlines\n  are\n  collapsed\n  ");
 assert_commit_summary(" Spaces before newlines are collapsed", "  \nSpaces before newlines  \nare  \ncollapsed  \n");
 assert_commit_summary(" Spaces around newlines are collapsed", "  \n  Spaces around newlines  \n  are  \n  collapsed  \n  ");
 assert_commit_summary(" Trailing newlines are" , "  \n  Trailing newlines  \n  are  \n\n  collapsed  \n  ");
 assert_commit_summary(" Trailing spaces are stripped", "  \n  Trailing spaces \n  are stripped \n\n  \n \t ");
 assert_commit_summary("", "");
 assert_commit_summary("", " ");
 assert_commit_summary("", "\n");
 assert_commit_summary("", "\n \n");
}
