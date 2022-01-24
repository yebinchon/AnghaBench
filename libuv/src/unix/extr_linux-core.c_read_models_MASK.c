#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* model; int /*<<< orphan*/  speed; } ;
typedef  TYPE_1__ uv_cpu_info_t ;
typedef  int /*<<< orphan*/  speed_marker ;
typedef  int /*<<< orphan*/  model_marker ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int UV_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 char* FUNC7 (char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(unsigned int numcpus, uv_cpu_info_t* ci) {
  static const char model_marker[] = "model name\t: ";
  static const char speed_marker[] = "cpu MHz\t\t: ";
  const char* inferred_model;
  unsigned int model_idx;
  unsigned int speed_idx;
  char buf[1024];
  char* model;
  FILE* fp;

  /* Most are unused on non-ARM, non-MIPS and non-x86 architectures. */
  (void) &model_marker;
  (void) &speed_marker;
  (void) &speed_idx;
  (void) &model;
  (void) &buf;
  (void) &fp;

  model_idx = 0;
  speed_idx = 0;

#if defined(__arm__) || \
    defined(__i386__) || \
    defined(__mips__) || \
    defined(__x86_64__)
  fp = FUNC6("/proc/cpuinfo");
  if (fp == NULL)
    return FUNC0(errno);

  while (FUNC3(buf, sizeof(buf), fp)) {
    if (model_idx < numcpus) {
      if (FUNC5(buf, model_marker, sizeof(model_marker) - 1) == 0) {
        model = buf + sizeof(model_marker) - 1;
        model = FUNC7(model, FUNC4(model) - 1);  /* Strip newline. */
        if (model == NULL) {
          FUNC2(fp);
          return UV_ENOMEM;
        }
        ci[model_idx++].model = model;
        continue;
      }
    }
#if defined(__arm__) || defined(__mips__)
    if (model_idx < numcpus) {
#if defined(__arm__)
      /* Fallback for pre-3.8 kernels. */
      static const char model_marker[] = "Processor\t: ";
#else	/* defined(__mips__) */
      static const char model_marker[] = "cpu model\t\t: ";
#endif
      if (strncmp(buf, model_marker, sizeof(model_marker) - 1) == 0) {
        model = buf + sizeof(model_marker) - 1;
        model = uv__strndup(model, strlen(model) - 1);  /* Strip newline. */
        if (model == NULL) {
          fclose(fp);
          return UV_ENOMEM;
        }
        ci[model_idx++].model = model;
        continue;
      }
    }
#else  /* !__arm__ && !__mips__ */
    if (speed_idx < numcpus) {
      if (FUNC5(buf, speed_marker, sizeof(speed_marker) - 1) == 0) {
        ci[speed_idx++].speed = FUNC1(buf + sizeof(speed_marker) - 1);
        continue;
      }
    }
#endif  /* __arm__ || __mips__ */
  }

  FUNC2(fp);
#endif  /* __arm__ || __i386__ || __mips__ || __x86_64__ */

  /* Now we want to make sure that all the models contain *something* because
   * it's not safe to leave them as null. Copy the last entry unless there
   * isn't one, in that case we simply put "unknown" into everything.
   */
  inferred_model = "unknown";
  if (model_idx > 0)
    inferred_model = ci[model_idx - 1].model;

  while (model_idx < numcpus) {
    model = FUNC7(inferred_model, FUNC4(inferred_model));
    if (model == NULL)
      return UV_ENOMEM;
    ci[model_idx++].model = model;
  }

  return 0;
}