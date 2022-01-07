
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ stat (char const*,struct stat*) ;

bool path_exists(const char *path) {
    struct stat buf;
    return (stat(path, &buf) == 0);
}
