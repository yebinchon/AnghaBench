#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct metafile {int next; int prev; int num; int data; int /*<<< orphan*/ * aio; } ;
struct TYPE_6__ {scalar_t__ metafile_index; } ;
typedef  TYPE_1__ list_t ;
struct TYPE_8__ {int tot_lists; } ;
struct TYPE_7__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FILE_LIST_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__ Header ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* Snapshot ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,long long) ; 
 scalar_t__ crc32_check_mode ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,long long,long long,int /*<<< orphan*/ *,struct metafile*) ; 
 int /*<<< orphan*/  ct_metafile_aio ; 
 int /*<<< orphan*/  data_metafiles_loaded ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 long long FUNC10 (int) ; 
 long long FUNC11 (int) ; 
 long long FUNC12 (TYPE_2__*,int,long long) ; 
 long long FUNC13 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 struct metafile** metafiles ; 
 int /*<<< orphan*/  metafiles_loaded ; 
 scalar_t__* revlist_metafiles_crc32 ; 
 int /*<<< orphan*/  revlist_metafiles_loaded ; 
 int /*<<< orphan*/  stderr ; 
 long long tot_metafiles_memory ; 
 int tot_revlist_metafiles ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 struct metafile* FUNC15 (int) ; 
 void* FUNC16 (long long) ; 

int FUNC17 (int x, int use_aio) {
  //assert (!use_aio);
  if (verbosity >= 4) {
    FUNC9 (stderr, "load_metafile_aio. x = %d, use_aio = %d\n", x, use_aio);
  }
  FUNC4 (x >= 0);
  if (!metafiles[x]) {
    metafiles[x] = FUNC15 (sizeof (struct metafile));
    metafiles[x]->next = -1;
    metafiles[x]->prev = -1;
  }
  long long offset, size;
  if (x <= Header.tot_lists) {
    offset = FUNC10 (x);
    FUNC4 (offset >= 0);
    size = FUNC10 (x + 1) - offset;
    FUNC4 (size >= 4);
  } else {
    FUNC4 (x <= Header.tot_lists + tot_revlist_metafiles);
    offset = FUNC11 (x - Header.tot_lists - 1);
    FUNC4 (offset >= 0);
    size = FUNC11 (x - Header.tot_lists) - offset;
    FUNC4 (size >= 4);
  }
  metafiles[x]->num = x;
  if (!metafiles[x]->data) {
    //metafiles[x]->data = zmalloc (size);
    metafiles[x]->data = FUNC16 (size);
    FUNC4 (metafiles[x]->data);
    tot_metafiles_memory += size;
  }
  if (use_aio == 0 && !metafiles[x]->aio) {
    FUNC4 (FUNC13 (Snapshot->fd, offset, SEEK_SET) == offset);
    FUNC4 (FUNC12 (Snapshot, metafiles[x]->data, size) == size);
    if (crc32_check_mode) {
      if (x <= Header.tot_lists) {
        FUNC4 (FUNC6 (metafiles[x]->data, size - 4) == *(((unsigned *)(metafiles[x]->data)) + (size >> 2) - 1));
      } else {
        FUNC4 (FUNC6 (metafiles[x]->data, size) == revlist_metafiles_crc32[x - Header.tot_lists - 1]);
      }
    }    
    FUNC3 (x);
    FUNC14 (4, "load success #%d. memory %lld\n", x, tot_metafiles_memory);

    if (x < Header.tot_lists) {
      FUNC4 (*(int *)(metafiles[x]->data) == FILE_LIST_MAGIC);
      //list_t *L = get_list_m (FLI_ENTRY_LIST_ID (x));
      list_t *L = FUNC2 (FUNC0 (x), -1);
      FUNC14 (4, "L = %p\n", L);
      if (!L || L->metafile_index >= 0) {
        FUNC4 (!L || L->metafile_index == x);
        FUNC8 (x);
      }
      data_metafiles_loaded ++;
    } else {
      revlist_metafiles_loaded ++;
    }
    metafiles_loaded ++;
    return 1;
  } else {
    struct metafile *meta = metafiles[x];
    if (meta->aio) {
      FUNC5 (meta->aio);
      if (meta->aio != NULL) {
        //WaitAio = meta->aio;
        FUNC1 (meta->aio);
        return -2;
      }
      if (meta->data) {
        return 1;
      } else {
        FUNC9 (stderr, "Previous AIO query failed at %p (metafile_num = %d), scheduling a new one\n", meta, meta->num);
        meta->data = FUNC16 (size);  
        tot_metafiles_memory += size;
      }
    }
    meta->aio = FUNC7 (Snapshot->fd, meta->data, offset, size, &ct_metafile_aio, meta);
    FUNC14 (4, "AIO query created\n");
    FUNC4 (meta->aio != NULL);
    //WaitAio = meta->aio;
    FUNC1 (meta->aio);

    return -2;    
  }
}