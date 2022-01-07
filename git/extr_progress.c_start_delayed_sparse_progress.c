
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct progress {int dummy; } ;


 struct progress* start_progress_delay (char const*,int ,int,int) ;

struct progress *start_delayed_sparse_progress(const char *title,
            uint64_t total)
{
 return start_progress_delay(title, total, 2, 1);
}
