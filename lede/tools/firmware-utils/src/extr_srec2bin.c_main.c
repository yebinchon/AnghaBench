
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 void* TRUE ;
 void* debug ;
 int srec2bin (int,char**,void*) ;
 void* verbose ;

int main(int argc, char *argv[])
{
    debug = TRUE;
    debug = FALSE;
    verbose = FALSE;
    srec2bin(argc,argv,verbose);
    return 0;
}
