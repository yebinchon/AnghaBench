
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_b_eq (int ,int,char*) ;
 int prof_log_rep_check () ;

__attribute__((used)) static void assert_rep() {
 assert_b_eq(prof_log_rep_check(), 0, "Rep check failed");
}
