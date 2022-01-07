
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ call_count ;
 int reset_args () ;

__attribute__((used)) static void
reset() {
 call_count = 0;
 reset_args();
}
