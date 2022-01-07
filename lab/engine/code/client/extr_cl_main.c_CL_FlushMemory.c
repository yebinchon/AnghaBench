
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_ClearMemory (int ) ;
 int CL_StartHunkUsers (int ) ;
 int qfalse ;

void CL_FlushMemory(void)
{
 CL_ClearMemory(qfalse);
 CL_StartHunkUsers(qfalse);
}
