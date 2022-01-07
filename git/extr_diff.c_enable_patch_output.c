
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIFF_FORMAT_NO_OUTPUT ;
 int DIFF_FORMAT_PATCH ;

__attribute__((used)) static void enable_patch_output(int *fmt)
{
 *fmt &= ~DIFF_FORMAT_NO_OUTPUT;
 *fmt |= DIFF_FORMAT_PATCH;
}
