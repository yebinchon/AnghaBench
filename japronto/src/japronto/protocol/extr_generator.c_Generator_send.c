
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int Generator ;


 int * Generator_next (int *) ;

__attribute__((used)) static PyObject*
Generator_send(Generator* self, PyObject* arg)
{
  return Generator_next(self);
}
