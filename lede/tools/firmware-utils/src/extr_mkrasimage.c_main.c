
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* name; } ;
struct TYPE_7__ {void* name; } ;
struct TYPE_6__ {scalar_t__ size; void* name; } ;
struct TYPE_5__ {scalar_t__ size; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 void* board_name ;
 int build_image () ;
 int check_options () ;
 int getopt (int,char**,char*) ;
 TYPE_4__ kernel ;
 void* optarg ;
 TYPE_3__ out ;
 int progname ;
 TYPE_2__ rootfs ;
 TYPE_1__ rootfs_out ;
 scalar_t__ rootfs_size ;
 int sscanf (void*,char*,scalar_t__*) ;
 int usage (int ) ;
 void* version_name ;

int main(int argc, char *argv[])
{
    int ret;
    progname = basename(argv[0]);
    while (1) {
        int c;

        c = getopt(argc, argv, "b:k:o:r:s:v:h");
        if (c == -1)
            break;

        switch (c) {
            case 'b':
                board_name = optarg;
                break;
            case 'h':
                usage(EXIT_SUCCESS);
                break;
            case 'k':
                kernel.name = optarg;
                break;
            case 'o':
                out.name = optarg;
                break;
            case 'r':
                rootfs.name = optarg;
                break;
            case 's':
                sscanf(optarg, "%u", &rootfs_size);
                break;
            case 'v':
                version_name = optarg;
                break;
            default:
                usage(EXIT_FAILURE);
                break;
        }
    }

    ret = check_options();
    if (ret)
        usage(EXIT_FAILURE);
    rootfs_out.size = rootfs_size < rootfs.size ? rootfs.size : rootfs_size;
    return build_image();
}
