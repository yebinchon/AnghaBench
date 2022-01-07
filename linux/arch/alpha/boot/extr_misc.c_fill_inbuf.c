
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int* inbuf ;
 int inptr ;
 int* input_data ;
 scalar_t__ input_data_size ;
 scalar_t__ insize ;

int fill_inbuf(void)
{
 if (insize != 0)
  error("ran out of input data");

 inbuf = input_data;
 insize = input_data_size;

 inptr = 1;
 return inbuf[0];
}
