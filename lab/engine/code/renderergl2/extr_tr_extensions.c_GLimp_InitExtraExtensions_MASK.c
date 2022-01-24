#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  version ;
typedef  int qboolean ;
struct TYPE_16__ {int framebufferObject; int vertexArrayObject; int textureFloat; size_t depthClamp; int seamlessCubeMap; scalar_t__ memInfo; int textureCompression; int swizzleNormalmap; int directStateAccess; int /*<<< orphan*/  glslMinorVersion; int /*<<< orphan*/  glslMajorVersion; int /*<<< orphan*/  maxColorAttachments; int /*<<< orphan*/  maxRenderbufferSize; void* framebufferMultisample; void* framebufferBlit; void* occlusionQuery; void* intelGraphics; } ;
struct TYPE_15__ {int /*<<< orphan*/  integer; } ;
struct TYPE_14__ {int /*<<< orphan*/  integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {int /*<<< orphan*/  integer; } ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char const*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MAX_COLOR_ATTACHMENTS ; 
 int /*<<< orphan*/  GL_MAX_RENDERBUFFER_SIZE ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_SHADING_LANGUAGE_VERSION ; 
 scalar_t__ MI_ATI ; 
 scalar_t__ MI_NONE ; 
 scalar_t__ MI_NVX ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  QGL_ARB_framebuffer_object_PROCS ; 
 int /*<<< orphan*/  QGL_ARB_occlusion_query_PROCS ; 
 int /*<<< orphan*/  QGL_ARB_vertex_array_object_PROCS ; 
 int /*<<< orphan*/  QGL_EXT_direct_state_access_PROCS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int TCR_BPTC ; 
 int TCR_NONE ; 
 int TCR_RGTC ; 
 TYPE_8__ glRefConfig ; 
 void* qfalse ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* qtrue ; 
 TYPE_7__* r_arb_seamless_cube_map ; 
 TYPE_6__* r_arb_vertex_array_object ; 
 TYPE_5__* r_ext_compressed_textures ; 
 TYPE_4__* r_ext_direct_state_access ; 
 TYPE_3__* r_ext_framebuffer_object ; 
 TYPE_2__* r_ext_texture_float ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char const*,char*) ; 

void FUNC29(void)
{
	char *extension;
	const char* result[3] = { "...ignoring %s\n", "...using %s\n", "...%s not found\n" };
	qboolean q_gl_version_at_least_3_0;
	qboolean q_gl_version_at_least_3_2;

	q_gl_version_at_least_3_0 = FUNC0( 3, 0 );
	q_gl_version_at_least_3_2 = FUNC0( 3, 2 );

	// Check if we need Intel graphics specific fixes.
	glRefConfig.intelGraphics = qfalse;
	if (FUNC6((char *)FUNC4(GL_RENDERER), "Intel"))
		glRefConfig.intelGraphics = qtrue;

	// set DSA fallbacks
#define GLE(ret, name, ...) qgl##name = GLDSA_##name;
	QGL_EXT_direct_state_access_PROCS;
#undef GLE

	// GL function loader, based on https://gist.github.com/rygorous/16796a0c876cf8a5f542caddb55bce8a
#define GLE(ret, name, ...) qgl##name = (name##proc *) GLimp_GetProcAddress("gl" #name);

	// OpenGL 1.5 - GL_ARB_occlusion_query
	glRefConfig.occlusionQuery = qtrue;
	QGL_ARB_occlusion_query_PROCS;

	// OpenGL 3.0 - GL_ARB_framebuffer_object
	extension = "GL_ARB_framebuffer_object";
	glRefConfig.framebufferObject = qfalse;
	glRefConfig.framebufferBlit = qfalse;
	glRefConfig.framebufferMultisample = qfalse;
	if (q_gl_version_at_least_3_0 || FUNC2(extension))
	{
		glRefConfig.framebufferObject = !!r_ext_framebuffer_object->integer;
		glRefConfig.framebufferBlit = qtrue;
		glRefConfig.framebufferMultisample = qtrue;

		FUNC3(GL_MAX_RENDERBUFFER_SIZE, &glRefConfig.maxRenderbufferSize);
		FUNC3(GL_MAX_COLOR_ATTACHMENTS, &glRefConfig.maxColorAttachments);

		QGL_ARB_framebuffer_object_PROCS;

		ri.Printf(PRINT_ALL, result[glRefConfig.framebufferObject], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// OpenGL 3.0 - GL_ARB_vertex_array_object
	extension = "GL_ARB_vertex_array_object";
	glRefConfig.vertexArrayObject = qfalse;
	if (q_gl_version_at_least_3_0 || FUNC2(extension))
	{
		if (q_gl_version_at_least_3_0)
		{
			// force VAO, core context requires it
			glRefConfig.vertexArrayObject = qtrue;
		}
		else
		{
			glRefConfig.vertexArrayObject = !!r_arb_vertex_array_object->integer;
		}

		QGL_ARB_vertex_array_object_PROCS;

		ri.Printf(PRINT_ALL, result[glRefConfig.vertexArrayObject], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// OpenGL 3.0 - GL_ARB_texture_float
	extension = "GL_ARB_texture_float";
	glRefConfig.textureFloat = qfalse;
	if (q_gl_version_at_least_3_0 || FUNC2(extension))
	{
		glRefConfig.textureFloat = !!r_ext_texture_float->integer;

		ri.Printf(PRINT_ALL, result[glRefConfig.textureFloat], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// OpenGL 3.2 - GL_ARB_depth_clamp
	extension = "GL_ARB_depth_clamp";
	glRefConfig.depthClamp = qfalse;
	if (q_gl_version_at_least_3_2 || FUNC2(extension))
	{
		glRefConfig.depthClamp = qtrue;

		ri.Printf(PRINT_ALL, result[glRefConfig.depthClamp], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// OpenGL 3.2 - GL_ARB_seamless_cube_map
	extension = "GL_ARB_seamless_cube_map";
	glRefConfig.seamlessCubeMap = qfalse;
	if (q_gl_version_at_least_3_2 || FUNC2(extension))
	{
		glRefConfig.seamlessCubeMap = !!r_arb_seamless_cube_map->integer;

		ri.Printf(PRINT_ALL, result[glRefConfig.seamlessCubeMap], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// Determine GLSL version
	if (1)
	{
		char version[256];

		FUNC1(version, (char *)FUNC4(GL_SHADING_LANGUAGE_VERSION), sizeof(version));

		FUNC5(version, "%d.%d", &glRefConfig.glslMajorVersion, &glRefConfig.glslMinorVersion);

		ri.Printf(PRINT_ALL, "...using GLSL version %s\n", version);
	}

	glRefConfig.memInfo = MI_NONE;

	// GL_NVX_gpu_memory_info
	extension = "GL_NVX_gpu_memory_info";
	if( FUNC2( extension ) )
	{
		glRefConfig.memInfo = MI_NVX;

		ri.Printf(PRINT_ALL, result[1], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// GL_ATI_meminfo
	extension = "GL_ATI_meminfo";
	if( FUNC2( extension ) )
	{
		if (glRefConfig.memInfo == MI_NONE)
		{
			glRefConfig.memInfo = MI_ATI;

			ri.Printf(PRINT_ALL, result[1], extension);
		}
		else
		{
			ri.Printf(PRINT_ALL, result[0], extension);
		}
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	glRefConfig.textureCompression = TCR_NONE;

	// GL_ARB_texture_compression_rgtc
	extension = "GL_ARB_texture_compression_rgtc";
	if (FUNC2(extension))
	{
		qboolean useRgtc = r_ext_compressed_textures->integer >= 1;

		if (useRgtc)
			glRefConfig.textureCompression |= TCR_RGTC;

		ri.Printf(PRINT_ALL, result[useRgtc], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	glRefConfig.swizzleNormalmap = r_ext_compressed_textures->integer && !(glRefConfig.textureCompression & TCR_RGTC);

	// GL_ARB_texture_compression_bptc
	extension = "GL_ARB_texture_compression_bptc";
	if (FUNC2(extension))
	{
		qboolean useBptc = r_ext_compressed_textures->integer >= 2;

		if (useBptc)
			glRefConfig.textureCompression |= TCR_BPTC;

		ri.Printf(PRINT_ALL, result[useBptc], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

	// GL_EXT_direct_state_access
	extension = "GL_EXT_direct_state_access";
	glRefConfig.directStateAccess = qfalse;
	if (FUNC2(extension))
	{
		glRefConfig.directStateAccess = !!r_ext_direct_state_access->integer;

		// QGL_*_PROCS becomes several functions, do not remove {}
		if (glRefConfig.directStateAccess)
		{
			QGL_EXT_direct_state_access_PROCS;
		}

		ri.Printf(PRINT_ALL, result[glRefConfig.directStateAccess], extension);
	}
	else
	{
		ri.Printf(PRINT_ALL, result[2], extension);
	}

#undef GLE
}