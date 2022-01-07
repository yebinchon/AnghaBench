
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t final_start_line_number; } ;
typedef TYPE_1__ git_blame_hunk ;



__attribute__((used)) static bool hunk_starts_at_or_after_line(git_blame_hunk *hunk, size_t line)
{
 return line <= hunk->final_start_line_number;
}
