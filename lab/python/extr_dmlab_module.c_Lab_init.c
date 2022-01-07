
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ (* setting ) (int ,char*,char*) ;char const* (* error_message ) (int ) ;scalar_t__ (* init ) (int ) ;int (* observation_count ) (int ) ;char* (* observation_name ) (int ,int) ;} ;
struct TYPE_10__ {int runfiles_path; } ;
struct TYPE_7__ {int * write_level_to_cache; int * fetch_level_from_cache; int * context; } ;
struct TYPE_9__ {char* optional_temp_folder; TYPE_1__ level_cache_params; int renderer; int runfiles_path; } ;
struct TYPE_8__ {int observation_count; int* observation_indices; int context; TYPE_6__* env_c_api; scalar_t__ episode; int status; int * level_cache_context; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;
typedef TYPE_3__ DeepMindLabLaunchParams ;


 int DeepMindLabRenderer_Hardware ;
 int DeepMindLabRenderer_Software ;
 int ENV_STATUS_UNINITIALIZED ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,char**,int *,int **,int *,int **,char**,int **,char**) ;
 scalar_t__ PyDict_Next (int *,int *,int **,int **) ;
 int PyDict_Type ;
 int PyErr_Format (int ,char*,char const*,...) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_ValueError ;
 int * PyImport_AddModule (char*) ;
 int * PyList_GetItem (int *,int) ;
 int PyList_Size (int *) ;
 int PyList_Type ;
 char* PyString_AsString (int *) ;
 char* PyUnicode_AsUTF8 (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int* calloc (int,int) ;
 scalar_t__ dmlab_connect (TYPE_3__*,TYPE_6__*,int *) ;
 int fetch_level_from_cache ;
 TYPE_4__* get_module_state (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ stub1 (int ,char*,char*) ;
 char const* stub10 (int ) ;
 int stub11 (int ) ;
 char* stub12 (int ,int) ;
 char const* stub2 (int ) ;
 scalar_t__ stub3 (int ,char*,char*) ;
 char const* stub4 (int ) ;
 scalar_t__ stub5 (int ,char*,char*) ;
 char const* stub6 (int ) ;
 scalar_t__ stub7 (int ,char const*,char const*) ;
 char const* stub8 (int ) ;
 scalar_t__ stub9 (int ) ;
 int write_level_to_cache ;

__attribute__((used)) static int Lab_init(PyObject* pself, PyObject* args, PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  char* level;
  char* renderer = ((void*)0);
  char* temp_folder = ((void*)0);
  PyObject *observations = ((void*)0), *config = ((void*)0), *level_cache = ((void*)0);

  static char* kwlist[] = {
    "level",
    "observations",
    "config",
    "renderer",
    "level_cache",
    "temp_folder",
    ((void*)0)
  };

  if (self->env_c_api == ((void*)0)) {
    PyErr_SetString(PyExc_RuntimeError, "RL API not setup");
    return -1;
  }

  if (!PyArg_ParseTupleAndKeywords(args, kwds, "sO!|O!sOs", kwlist,
                                   &level,
                                   &PyList_Type, &observations,
                                   &PyDict_Type, &config,
                                   &renderer, &level_cache, &temp_folder)) {
    return -1;
  }

  self->observation_count = PyList_Size(observations);
  self->observation_indices = calloc(self->observation_count, sizeof(int));
  if (self->observation_indices == ((void*)0)) {
    PyErr_NoMemory();
    return -1;
  }
  {
    PyObject* module = ((void*)0);


    DeepMindLabLaunchParams params = {};
    params.runfiles_path = get_module_state(module)->runfiles_path;
    params.renderer = DeepMindLabRenderer_Software;
    if (renderer != ((void*)0) && renderer[0] != '\0') {
      if (strcmp(renderer, "hardware") == 0) {
        params.renderer = DeepMindLabRenderer_Hardware;
      } else if (strcmp(renderer, "software") != 0) {
        PyErr_Format(PyExc_RuntimeError,
                     "Failed to set renderer must be \"hardware\" or "
                     "\"software\" actual \"%s\"!",
                     renderer);
        return -1;
      }
    }

    if (level_cache != ((void*)0) && level_cache != Py_None) {
      Py_INCREF(level_cache);
      params.level_cache_params.context = level_cache;
      params.level_cache_params.fetch_level_from_cache =
          &fetch_level_from_cache;
      params.level_cache_params.write_level_to_cache = &write_level_to_cache;
      self->level_cache_context = level_cache;
    }

    if (temp_folder != ((void*)0)) {
      params.optional_temp_folder = temp_folder;
    }

    if (dmlab_connect(&params, self->env_c_api, &self->context) != 0) {
      PyErr_SetString(PyExc_RuntimeError, "Failed to connect RL API");
      return -1;
    }
    self->status = ENV_STATUS_UNINITIALIZED;
    self->episode = 0;
  }

  if (self->env_c_api->setting(self->context, "levelName", level) != 0) {
    PyErr_Format(PyExc_RuntimeError, "Invalid levelName flag '%s' - \"%s\"",
                 level, self->env_c_api->error_message(self->context));
    return -1;
  }

  if (self->env_c_api->setting(self->context, "fps", "60") != 0) {
    PyErr_Format(PyExc_RuntimeError, "Failed to set fps - \"%s\"",
                 self->env_c_api->error_message(self->context));
    return -1;
  }

  if (config != ((void*)0)) {
    PyObject *pykey, *pyvalue;
    Py_ssize_t pos = 0;
    const char *key, *value;

    while (PyDict_Next(config, &pos, &pykey, &pyvalue)) {




      key = PyString_AsString(pykey);
      value = PyString_AsString(pyvalue);

      if (key == ((void*)0) || value == ((void*)0)) {
        return -1;
      }
      if (self->env_c_api->setting(self->context, key, value) != 0) {
        PyErr_Format(PyExc_RuntimeError,
                     "Failed to apply setting '%s = %s' - \"%s\"", key, value,
                     self->env_c_api->error_message(self->context));
        return -1;
      }
    }
  }

  if (self->env_c_api->init(self->context) != 0) {
    PyErr_Format(PyExc_RuntimeError, "Failed to init environment - \"%s\"",
                 self->env_c_api->error_message(self->context));
    return -1;
  }

  const char* observation_name;
  int api_observation_count = self->env_c_api->observation_count(self->context);
  for (int i = 0; i < self->observation_count; ++i) {



    observation_name = PyString_AsString(PyList_GetItem(observations, i));

    if (observation_name == ((void*)0)) {
      return -1;
    }
    int j;
    for (j = 0; j < api_observation_count; ++j) {
      if (strcmp(self->env_c_api->observation_name(self->context, j),
                 observation_name) == 0) {
        self->observation_indices[i] = j;
        break;
      }
    }
    if (j == api_observation_count) {
      PyErr_Format(PyExc_ValueError, "Unknown observation '%s'.",
                   observation_name);
      return -1;
    }
  }

  return 0;
}
