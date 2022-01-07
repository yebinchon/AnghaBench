
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int * PyMODINIT_FUNC ;


 int DEFAULT_CHECK_INTERVAL ;
 int * PyLong_FromLong (int ) ;
 int PyModule_AddObject (int *,char*,int *) ;
 int * PyModule_Create (int *) ;
 scalar_t__ PyType_Ready (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int ReaperType ;
 int creaper ;
 int * default_check_interval ;
 int import_capi (char*) ;
 int protocol_capi ;

PyMODINIT_FUNC
PyInit_creaper(void)
{
  PyObject* m = ((void*)0);
  default_check_interval = ((void*)0);

  if (PyType_Ready(&ReaperType) < 0)
    goto error;

  m = PyModule_Create(&creaper);
  if(!m)
    goto error;

  Py_INCREF(&ReaperType);
  PyModule_AddObject(m, "Reaper", (PyObject*)&ReaperType);

  if(!(default_check_interval = PyLong_FromLong(DEFAULT_CHECK_INTERVAL)))
    goto error;

  protocol_capi = import_capi("japronto.protocol.cprotocol");
  if(!protocol_capi)
    goto error;

  goto finally;

  error:
  Py_XDECREF(default_check_interval);
  m = ((void*)0);

  finally:
  return m;
}
