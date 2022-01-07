
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* data; int size; } ;
struct TYPE_11__ {char* data; int size; scalar_t__ name; } ;
struct TYPE_10__ {int size; char* data; } ;


 int BOARD_HEADER_LEN ;
 size_t HEADER_PARTITION_LENGTH ;
 int KERNEL_HEADER_LEN ;
 int ROOTFS_HEADER_LEN ;
 int board_name ;
 char* calloc (int,int) ;
 int free (char*) ;
 char* generate_board_header (char*,char*,int ) ;
 char* generate_kernel_header (TYPE_2__) ;
 char* generate_rootfs_header (TYPE_3__,int ) ;
 TYPE_2__ kernel ;
 char* malloc (int) ;
 int map_file (TYPE_2__*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;
 TYPE_1__ out ;
 TYPE_2__ rootfs ;
 TYPE_3__ rootfs_out ;
 int unmap_file (TYPE_2__*) ;
 int version_name ;
 int write_file (TYPE_1__*) ;

int build_image()
{
    char *rootfs_header = ((void*)0);
    char *kernel_header = ((void*)0);
    char *board_header = ((void*)0);

    size_t ptr;


    if (kernel.name)
        map_file(&kernel);
    map_file(&rootfs);
    rootfs_out.data = calloc(rootfs_out.size, sizeof(char));
    memcpy(rootfs_out.data, rootfs.data, rootfs.size);


    rootfs_header = generate_rootfs_header(rootfs_out, version_name);
    if (kernel.name)
        kernel_header = generate_kernel_header(kernel);
    board_header = generate_board_header(kernel_header, rootfs_header, board_name);


    out.size = HEADER_PARTITION_LENGTH + rootfs_out.size;
    if (kernel.name)
        out.size += kernel.size;
    out.data = malloc(out.size);
    memset(out.data, 0xFF, out.size);


    memcpy(out.data, rootfs_header, ROOTFS_HEADER_LEN);
    memcpy(out.data + ROOTFS_HEADER_LEN, board_header, BOARD_HEADER_LEN);
    if (kernel.name)
        memcpy(out.data + ROOTFS_HEADER_LEN + BOARD_HEADER_LEN, kernel_header, KERNEL_HEADER_LEN);
    ptr = HEADER_PARTITION_LENGTH;
    memcpy(out.data + ptr, rootfs_out.data, rootfs_out.size);
    ptr += rootfs_out.size;
    if (kernel.name)
        memcpy(out.data + ptr, kernel.data, kernel.size);


    write_file(&out);


    if (kernel.name)
        unmap_file(&kernel);
    unmap_file(&rootfs);
    free(out.data);
    free(rootfs_out.data);

    free(rootfs_header);
    if (kernel.name)
        free(kernel_header);
    free(board_header);

    return 0;
}
