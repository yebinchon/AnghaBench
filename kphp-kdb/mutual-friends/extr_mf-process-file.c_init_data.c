
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_name ;
 int open_file (int,int ,int) ;
 int output_name ;

void init_data (void) {
  open_file (0, input_name, 0);
  open_file (1, output_name, 2);






}
