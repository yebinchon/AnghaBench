#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  md3Tag_t ;
struct TYPE_13__ {size_t ofsEnd; } ;
typedef  TYPE_1__ md3Surface_t ;
struct TYPE_14__ {int ident; int version; int numFrames; int numTags; int numSurfaces; int ofsFrames; int ofsTags; int ofsSurfaces; int ofsEnd; int /*<<< orphan*/  name; scalar_t__ numSkins; scalar_t__ flags; } ;
typedef  TYPE_2__ md3Header_t ;
struct TYPE_15__ {int /*<<< orphan*/  name; void* radius; void** localOrigin; void*** bounds; } ;
typedef  TYPE_3__ md3Frame_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_16__ {scalar_t__ radius; scalar_t__* origin; scalar_t__* extents; } ;
typedef  TYPE_4__ aabb_t ;
struct TYPE_17__ {size_t (* get_tag_count ) (void*) ;size_t (* get_surface_count ) (void*) ;int /*<<< orphan*/  (* get_name ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ DeepmindModelGetters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (scalar_t__) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  MAX_QPATH ; 
 size_t MD3_IDENT ; 
 size_t MD3_VERSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,TYPE_5__ const*,void*,TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,TYPE_5__ const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (void*) ; 
 size_t FUNC9 (void*) ; 

void FUNC10(             //
    const DeepmindModelGetters* model,  //
    void* model_data,                   //
    void* buffer) {
  // Fill model data.
  md3Header_t* md3_model = (md3Header_t*)buffer;
  md3_model->ident = FUNC3(MD3_IDENT);
  md3_model->version =FUNC3(MD3_VERSION);
  model->get_name(model_data, MAX_QPATH, md3_model->name);
  md3_model->flags = 0;
  md3_model->numFrames = FUNC3(1);
  size_t num_tags = model->get_tag_count(model_data);
  md3_model->numTags = FUNC3(num_tags);
  size_t num_surfs = model->get_surface_count(model_data);
  md3_model->numSurfaces = FUNC3(num_surfs);
  md3_model->numSkins = 0;
  size_t ofs_frames = sizeof(md3Header_t);
  md3_model->ofsFrames = FUNC3(ofs_frames);
  size_t ofs_tags = ofs_frames + sizeof(md3Frame_t);
  md3_model->ofsTags = FUNC3(ofs_tags);
  size_t ofs_surfs = ofs_tags + num_tags * sizeof(md3Tag_t);
  md3_model->ofsSurfaces = FUNC3(ofs_surfs);

  // Fill tags.
  md3Tag_t* md3_tags = (md3Tag_t*)(buffer + ofs_tags);
  for (size_t i = 0; i < num_tags; ++i) {
    FUNC6(i, model, model_data, md3_tags + i);
  }

  // Fill surfaces.
  aabb_t bbox;
  FUNC0(&bbox);
  md3Surface_t* md3_surf = (md3Surface_t*)(buffer + ofs_surfs);
  for (size_t i = 0; i < num_surfs; ++i) {
    FUNC5(i, model, model_data, md3_surf, &bbox);
    md3_surf = (md3Surface_t*)((byte*)md3_surf + FUNC3(md3_surf->ofsEnd));
  }

  // Fill frame data.
  FUNC1(&bbox);
  md3Frame_t* md3_frame = (md3Frame_t*)(buffer + ofs_frames);
  for (size_t j = 0; j < 3; ++j) {
    md3_frame->bounds[0][j] = FUNC2(bbox.origin[j] - bbox.extents[j]);
    md3_frame->bounds[1][j] = FUNC2(bbox.origin[j] + bbox.extents[j]);
    md3_frame->localOrigin[j] = FUNC2(bbox.origin[j]);
  }
  md3_frame->radius = FUNC2(bbox.radius);
  FUNC4(md3_frame->name, md3_model->name, sizeof(md3_frame->name));

  // Complete model data.
  size_t ofs_end = (byte*)md3_surf - (byte*)buffer;
  md3_model->ofsEnd = FUNC3(ofs_end);
}