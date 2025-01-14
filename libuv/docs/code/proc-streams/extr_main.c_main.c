
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ data; void* flags; } ;
typedef TYPE_2__ uv_stdio_container_t ;
struct TYPE_7__ {int stdio_count; char* file; char** args; int exit_cb; TYPE_2__* stdio; } ;


 void* UV_IGNORE ;
 void* UV_INHERIT_FD ;
 int UV_RUN_DEFAULT ;
 int child_req ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_exit ;
 TYPE_3__ options ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int uv_default_loop () ;
 int uv_exepath (char*,size_t*) ;
 int uv_run (int ,int ) ;
 int uv_spawn (int ,int *,TYPE_3__*) ;
 char* uv_strerror (int) ;

int main() {
    loop = uv_default_loop();

    size_t size = 500;
    char path[size];
    uv_exepath(path, &size);
    strcpy(path + (strlen(path) - strlen("proc-streams")), "test");

    char* args[2];
    args[0] = path;
    args[1] = ((void*)0);



    options.stdio_count = 3;
    uv_stdio_container_t child_stdio[3];
    child_stdio[0].flags = UV_IGNORE;
    child_stdio[1].flags = UV_IGNORE;
    child_stdio[2].flags = UV_INHERIT_FD;
    child_stdio[2].data.fd = 2;
    options.stdio = child_stdio;

    options.exit_cb = on_exit;
    options.file = args[0];
    options.args = args;

    int r;
    if ((r = uv_spawn(loop, &child_req, &options))) {
        fprintf(stderr, "%s\n", uv_strerror(r));
        return 1;
    }

    return uv_run(loop, UV_RUN_DEFAULT);
}
