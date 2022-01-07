
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * mat4_t ;
struct TYPE_2__ {int (* Printf ) (int ,char*,int ,int ,int ,int ) ;} ;


 int PRINT_ALL ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int ,int ,int ,int ) ;
 int stub2 (int ,char*,int ,int ,int ,int ) ;
 int stub3 (int ,char*,int ,int ,int ,int ) ;
 int stub4 (int ,char*,int ,int ,int ,int ) ;

void Mat4Dump( const mat4_t in )
{
 ri.Printf(PRINT_ALL, "%3.5f %3.5f %3.5f %3.5f\n", in[ 0], in[ 4], in[ 8], in[12]);
 ri.Printf(PRINT_ALL, "%3.5f %3.5f %3.5f %3.5f\n", in[ 1], in[ 5], in[ 9], in[13]);
 ri.Printf(PRINT_ALL, "%3.5f %3.5f %3.5f %3.5f\n", in[ 2], in[ 6], in[10], in[14]);
 ri.Printf(PRINT_ALL, "%3.5f %3.5f %3.5f %3.5f\n", in[ 3], in[ 7], in[11], in[15]);
}
