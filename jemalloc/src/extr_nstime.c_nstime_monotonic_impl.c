
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSTIME_MONOTONIC ;

__attribute__((used)) static bool
nstime_monotonic_impl(void) {
 return NSTIME_MONOTONIC;

}
