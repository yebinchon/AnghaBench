
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int face_t ;


 int * GetMemory (int) ;
 int c_faces ;
 int memset (int *,int ,int) ;

face_t *AllocFace (void)
{
 face_t *f;

 f = GetMemory(sizeof(*f));
 memset (f, 0, sizeof(*f));
 c_faces++;

 return f;
}
