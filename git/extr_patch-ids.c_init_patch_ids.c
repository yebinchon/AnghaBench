
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_5__ {int recursive; } ;
struct TYPE_6__ {TYPE_1__ flags; scalar_t__ detect_rename; } ;
struct patch_ids {TYPE_2__ diffopts; int patches; } ;


 int diff_setup_done (TYPE_2__*) ;
 int hashmap_init (int *,int ,TYPE_2__*,int) ;
 int memset (struct patch_ids*,int ,int) ;
 int patch_id_neq ;
 int repo_diff_setup (struct repository*,TYPE_2__*) ;

int init_patch_ids(struct repository *r, struct patch_ids *ids)
{
 memset(ids, 0, sizeof(*ids));
 repo_diff_setup(r, &ids->diffopts);
 ids->diffopts.detect_rename = 0;
 ids->diffopts.flags.recursive = 1;
 diff_setup_done(&ids->diffopts);
 hashmap_init(&ids->patches, patch_id_neq, &ids->diffopts, 256);
 return 0;
}
