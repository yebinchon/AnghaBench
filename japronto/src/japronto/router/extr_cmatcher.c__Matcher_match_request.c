
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * route; } ;
typedef int PyObject ;
typedef TYPE_1__ MatcherEntry ;
typedef int Matcher ;
typedef int MatchDictEntry ;


 int * MatchDict_entries_to_dict (int *,size_t) ;
 TYPE_1__* Matcher_match_request (int *,int *,int **,size_t*) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_INCREF (int *) ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject*
_Matcher_match_request(Matcher* self, PyObject* request)
{
  MatcherEntry* matcher_entry;
  MatchDictEntry* entries;
  PyObject* route = ((void*)0);
  size_t length;
  PyObject* match_dict = ((void*)0);
  PyObject* route_dict = ((void*)0);

  if(!(matcher_entry = Matcher_match_request(
       self, request, &entries, &length)))
    Py_RETURN_NONE;

  route = matcher_entry->route;

  if(!(match_dict = MatchDict_entries_to_dict(entries, length)))
    goto error;

  if(!(route_dict = PyTuple_New(2)))
    goto error;

  PyTuple_SET_ITEM(route_dict, 0, route);
  PyTuple_SET_ITEM(route_dict, 1, match_dict);

  goto finally;

  error:
  Py_XDECREF(match_dict);
  route = ((void*)0);

  finally:
  if(route)
    Py_INCREF(route);
  return route_dict;
}
