
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * sun_path ;
 int unlink (int *) ;

__attribute__((used)) static void cleanup_socket(void) {
    if (sun_path != ((void*)0)) {
        unlink(sun_path);
        free(sun_path);
        sun_path = ((void*)0);
    }
}
