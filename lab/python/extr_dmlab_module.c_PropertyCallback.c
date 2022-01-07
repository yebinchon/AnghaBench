
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef scalar_t__ EnvCApi_PropertyAttributes ;


 int PyDict_SetItemString (int *,char const*,int ) ;
 int PyInt_FromLong (int) ;

__attribute__((used)) static void PropertyCallback(void* userdata, const char* key,
                             EnvCApi_PropertyAttributes attributes) {
  PyObject* dictionary = (PyObject*)userdata;
  PyDict_SetItemString(dictionary, key, PyInt_FromLong((int)attributes));
}
