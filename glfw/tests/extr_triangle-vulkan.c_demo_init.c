
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {scalar_t__ frameCount; int use_staging_buffer; int use_break; int validate; int width; int height; double depthStencil; float depthIncrement; } ;


 char* APP_SHORT_NAME ;
 scalar_t__ INT32_MAX ;
 int demo_init_connection (struct demo*) ;
 int demo_init_vk (struct demo*) ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int memset (struct demo*,int ,int) ;
 int sscanf (char const*,char*,scalar_t__*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void demo_init(struct demo *demo, const int argc, const char *argv[])
{
    int i;
    memset(demo, 0, sizeof(*demo));
    demo->frameCount = INT32_MAX;

    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--use_staging") == 0) {
            demo->use_staging_buffer = 1;
            continue;
        }
        if (strcmp(argv[i], "--break") == 0) {
            demo->use_break = 1;
            continue;
        }
        if (strcmp(argv[i], "--validate") == 0) {
            demo->validate = 1;
            continue;
        }
        if (strcmp(argv[i], "--c") == 0 && demo->frameCount == INT32_MAX &&
            i < argc - 1 && sscanf(argv[i + 1], "%d", &demo->frameCount) == 1 &&
            demo->frameCount >= 0) {
            i++;
            continue;
        }

        fprintf(stderr, "Usage:\n  %s [--use_staging] [--validate] [--break] "
                        "[--c <framecount>]\n",
                APP_SHORT_NAME);
        fflush(stderr);
        exit(1);
    }

    demo_init_connection(demo);
    demo_init_vk(demo);

    demo->width = 300;
    demo->height = 300;
    demo->depthStencil = 1.0;
    demo->depthIncrement = -0.01f;
}
