
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* model; int speed; } ;
typedef TYPE_1__ uv_cpu_info_t ;
typedef int speed_marker ;
typedef int model_marker ;
typedef int buf ;
typedef int FILE ;


 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int atoi (char*) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int * uv__open_file (char*) ;
 char* uv__strndup (char const*,scalar_t__) ;

__attribute__((used)) static int read_models(unsigned int numcpus, uv_cpu_info_t* ci) {
  static const char model_marker[] = "model name\t: ";
  static const char speed_marker[] = "cpu MHz\t\t: ";
  const char* inferred_model;
  unsigned int model_idx;
  unsigned int speed_idx;
  char buf[1024];
  char* model;
  FILE* fp;


  (void) &model_marker;
  (void) &speed_marker;
  (void) &speed_idx;
  (void) &model;
  (void) &buf;
  (void) &fp;

  model_idx = 0;
  speed_idx = 0;





  fp = uv__open_file("/proc/cpuinfo");
  if (fp == ((void*)0))
    return UV__ERR(errno);

  while (fgets(buf, sizeof(buf), fp)) {
    if (model_idx < numcpus) {
      if (strncmp(buf, model_marker, sizeof(model_marker) - 1) == 0) {
        model = buf + sizeof(model_marker) - 1;
        model = uv__strndup(model, strlen(model) - 1);
        if (model == ((void*)0)) {
          fclose(fp);
          return UV_ENOMEM;
        }
        ci[model_idx++].model = model;
        continue;
      }
    }
    if (speed_idx < numcpus) {
      if (strncmp(buf, speed_marker, sizeof(speed_marker) - 1) == 0) {
        ci[speed_idx++].speed = atoi(buf + sizeof(speed_marker) - 1);
        continue;
      }
    }

  }

  fclose(fp);






  inferred_model = "unknown";
  if (model_idx > 0)
    inferred_model = ci[model_idx - 1].model;

  while (model_idx < numcpus) {
    model = uv__strndup(inferred_model, strlen(inferred_model));
    if (model == ((void*)0))
      return UV_ENOMEM;
    ci[model_idx++].model = model;
  }

  return 0;
}
