
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_copy_note (int *,int ) ;

void test_rebase_merge__copy_notes_off_by_default(void)
{
 test_copy_note(((void*)0), 0);
}
