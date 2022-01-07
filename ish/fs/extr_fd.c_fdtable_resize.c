
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {unsigned int size; struct fd** cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef struct fd* bits_t ;


 int BITS_SIZE (unsigned int) ;
 int _ENOMEM ;
 int assert (int) ;
 int free (struct fd**) ;
 struct fd** malloc (int) ;
 int memcpy (struct fd**,struct fd**,int) ;
 int memset (struct fd**,int ,int) ;

__attribute__((used)) static int fdtable_resize(struct fdtable *table, unsigned size) {

    assert(size > table->size);

    struct fd **files = malloc(sizeof(struct fd *) * size);
    if (files == ((void*)0))
        return _ENOMEM;
    memset(files, 0, sizeof(struct fd *) * size);
    if (table->files)
        memcpy(files, table->files, sizeof(struct fd *) * table->size);

    bits_t *cloexec = malloc(BITS_SIZE(size));
    if (cloexec == ((void*)0)) {
        free(files);
        return _ENOMEM;
    }
    memset(cloexec, 0, BITS_SIZE(size));
    if (table->cloexec)
        memcpy(cloexec, table->cloexec, BITS_SIZE(table->size));

    free(table->files);
    table->files = files;
    free(table->cloexec);
    table->cloexec = cloexec;
    table->size = size;
    return 0;
}
