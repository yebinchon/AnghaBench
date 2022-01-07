
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_length; int value; int key_length; int key; } ;
typedef int PyObject ;
typedef TYPE_1__ MatchDictEntry ;


 int * PyDict_New () ;
 int PyDict_SetItem (int *,int *,int *) ;
 int * PyUnicode_FromStringAndSize (int ,int ) ;
 int Py_XDECREF (int *) ;

PyObject*
MatchDict_entries_to_dict(MatchDictEntry* entries, size_t length)
{
  PyObject* match_dict = ((void*)0);
  if(!(match_dict = PyDict_New()))
    goto error;

  for(MatchDictEntry* entry = entries; entry < entries + length; entry++) {
    PyObject* key = ((void*)0);
    PyObject* value = ((void*)0);

    if(!(key = PyUnicode_FromStringAndSize(entry->key, entry->key_length)))
      goto loop_error;

    if(!(value = PyUnicode_FromStringAndSize(entry->value, entry->value_length)))
      goto loop_error;

    if(PyDict_SetItem(match_dict, key, value) == -1)
      goto loop_error;

    goto loop_finally;

    loop_error:
    Py_XDECREF(match_dict);
    match_dict = ((void*)0);

    loop_finally:
    Py_XDECREF(key);
    Py_XDECREF(value);
    if(!match_dict)
      goto error;
  }

  goto finally;

  error:
  Py_XDECREF(match_dict);
  match_dict = ((void*)0);

  finally:
  return match_dict;
}
