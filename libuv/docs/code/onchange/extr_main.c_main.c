
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_event_t ;


 int UV_FS_EVENT_RECURSIVE ;
 int UV_RUN_DEFAULT ;
 char* command ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int * malloc (int) ;
 int run_command ;
 int stderr ;
 int uv_default_loop () ;
 int uv_fs_event_init (int ,int *) ;
 int uv_fs_event_start (int *,int ,char*,int ) ;
 int uv_run (int ,int ) ;

int main(int argc, char **argv) {
    if (argc <= 2) {
        fprintf(stderr, "Usage: %s <command> <file1> [file2 ...]\n", argv[0]);
        return 1;
    }

    loop = uv_default_loop();
    command = argv[1];

    while (argc-- > 2) {
        fprintf(stderr, "Adding watch on %s\n", argv[argc]);
        uv_fs_event_t *fs_event_req = malloc(sizeof(uv_fs_event_t));
        uv_fs_event_init(loop, fs_event_req);

        uv_fs_event_start(fs_event_req, run_command, argv[argc], UV_FS_EVENT_RECURSIVE);
    }

    return uv_run(loop, UV_RUN_DEFAULT);
}
