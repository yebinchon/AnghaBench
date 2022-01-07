; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_sin.c_Sin_AllocMaxBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_sin.c_Sin_AllocMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_nummodels = common dso_local global i64 0, align 8
@SIN_MAX_MAP_MODELS = common dso_local global i32 0, align 4
@sin_dmodels = common dso_local global i32* null, align 8
@sin_allocatedbspmem = common dso_local global i32 0, align 4
@sin_visdatasize = common dso_local global i64 0, align 8
@SIN_MAX_MAP_VISIBILITY = common dso_local global i32 0, align 4
@sin_dvisdata = common dso_local global i32* null, align 8
@sin_dvis = common dso_local global i32* null, align 8
@sin_lightdatasize = common dso_local global i64 0, align 8
@SIN_MAX_MAP_LIGHTING = common dso_local global i32 0, align 4
@sin_dlightdata = common dso_local global i32* null, align 8
@sin_entdatasize = common dso_local global i64 0, align 8
@SIN_MAX_MAP_ENTSTRING = common dso_local global i32 0, align 4
@sin_dentdata = common dso_local global i8* null, align 8
@sin_numleafs = common dso_local global i64 0, align 8
@SIN_MAX_MAP_LEAFS = common dso_local global i32 0, align 4
@sin_dleafs = common dso_local global i32* null, align 8
@sin_numplanes = common dso_local global i64 0, align 8
@SIN_MAX_MAP_PLANES = common dso_local global i32 0, align 4
@sin_dplanes = common dso_local global i32* null, align 8
@sin_numvertexes = common dso_local global i64 0, align 8
@SIN_MAX_MAP_VERTS = common dso_local global i32 0, align 4
@sin_dvertexes = common dso_local global i32* null, align 8
@sin_numnodes = common dso_local global i64 0, align 8
@SIN_MAX_MAP_NODES = common dso_local global i32 0, align 4
@sin_dnodes = common dso_local global i32* null, align 8
@sin_numtexinfo = common dso_local global i64 0, align 8
@SIN_MAX_MAP_TEXINFO = common dso_local global i32 0, align 4
@sin_texinfo = common dso_local global i32* null, align 8
@sin_numfaces = common dso_local global i64 0, align 8
@SIN_MAX_MAP_FACES = common dso_local global i32 0, align 4
@sin_dfaces = common dso_local global i32* null, align 8
@sin_numedges = common dso_local global i64 0, align 8
@SIN_MAX_MAP_EDGES = common dso_local global i32 0, align 4
@sin_dedges = common dso_local global i32* null, align 8
@sin_numleaffaces = common dso_local global i64 0, align 8
@SIN_MAX_MAP_LEAFFACES = common dso_local global i32 0, align 4
@sin_dleaffaces = common dso_local global i16* null, align 8
@sin_numleafbrushes = common dso_local global i64 0, align 8
@SIN_MAX_MAP_LEAFBRUSHES = common dso_local global i32 0, align 4
@sin_dleafbrushes = common dso_local global i16* null, align 8
@sin_numsurfedges = common dso_local global i64 0, align 8
@SIN_MAX_MAP_SURFEDGES = common dso_local global i32 0, align 4
@sin_dsurfedges = common dso_local global i32* null, align 8
@sin_numbrushes = common dso_local global i64 0, align 8
@SIN_MAX_MAP_BRUSHES = common dso_local global i32 0, align 4
@sin_dbrushes = common dso_local global i32* null, align 8
@sin_numbrushsides = common dso_local global i64 0, align 8
@SIN_MAX_MAP_BRUSHSIDES = common dso_local global i32 0, align 4
@sin_dbrushsides = common dso_local global i32* null, align 8
@sin_numareas = common dso_local global i64 0, align 8
@SIN_MAX_MAP_AREAS = common dso_local global i32 0, align 4
@sin_dareas = common dso_local global i32* null, align 8
@sin_numareaportals = common dso_local global i64 0, align 8
@SIN_MAX_MAP_AREAPORTALS = common dso_local global i32 0, align 4
@sin_dareaportals = common dso_local global i32* null, align 8
@sin_numlightinfo = common dso_local global i64 0, align 8
@SIN_MAX_MAP_LIGHTINFO = common dso_local global i32 0, align 4
@sin_lightinfo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"allocated \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" of BSP memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sin_AllocMaxBSP() #0 {
  store i64 0, i64* @sin_nummodels, align 8
  %1 = load i32, i32* @SIN_MAX_MAP_MODELS, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = trunc i64 %3 to i32
  %5 = call i64 @GetClearedMemory(i32 %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** @sin_dmodels, align 8
  %7 = load i32, i32* @SIN_MAX_MAP_MODELS, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = load i32, i32* @sin_allocatedbspmem, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_visdatasize, align 8
  %14 = load i32, i32* @SIN_MAX_MAP_VISIBILITY, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @GetClearedMemory(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @sin_dvisdata, align 8
  %20 = load i32*, i32** @sin_dvisdata, align 8
  store i32* %20, i32** @sin_dvis, align 8
  %21 = load i32, i32* @SIN_MAX_MAP_VISIBILITY, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = load i32, i32* @sin_allocatedbspmem, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_lightdatasize, align 8
  %28 = load i32, i32* @SIN_MAX_MAP_LIGHTING, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @GetClearedMemory(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** @sin_dlightdata, align 8
  %34 = load i32, i32* @SIN_MAX_MAP_LIGHTING, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i32, i32* @sin_allocatedbspmem, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_entdatasize, align 8
  %41 = load i32, i32* @SIN_MAX_MAP_ENTSTRING, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i64 @GetClearedMemory(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @sin_dentdata, align 8
  %47 = load i32, i32* @SIN_MAX_MAP_ENTSTRING, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = load i32, i32* @sin_allocatedbspmem, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numleafs, align 8
  %54 = load i32, i32* @SIN_MAX_MAP_LEAFS, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i64 @GetClearedMemory(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** @sin_dleafs, align 8
  %60 = load i32, i32* @SIN_MAX_MAP_LEAFS, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = load i32, i32* @sin_allocatedbspmem, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numplanes, align 8
  %67 = load i32, i32* @SIN_MAX_MAP_PLANES, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i64 @GetClearedMemory(i32 %70)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** @sin_dplanes, align 8
  %73 = load i32, i32* @SIN_MAX_MAP_PLANES, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = load i32, i32* @sin_allocatedbspmem, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numvertexes, align 8
  %80 = load i32, i32* @SIN_MAX_MAP_VERTS, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i64 @GetClearedMemory(i32 %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** @sin_dvertexes, align 8
  %86 = load i32, i32* @SIN_MAX_MAP_VERTS, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = load i32, i32* @sin_allocatedbspmem, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numnodes, align 8
  %93 = load i32, i32* @SIN_MAX_MAP_NODES, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i64 @GetClearedMemory(i32 %96)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** @sin_dnodes, align 8
  %99 = load i32, i32* @SIN_MAX_MAP_NODES, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = load i32, i32* @sin_allocatedbspmem, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numtexinfo, align 8
  %106 = load i32, i32* @SIN_MAX_MAP_TEXINFO, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i64 @GetClearedMemory(i32 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** @sin_texinfo, align 8
  %112 = load i32, i32* @SIN_MAX_MAP_TEXINFO, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = load i32, i32* @sin_allocatedbspmem, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numfaces, align 8
  %119 = load i32, i32* @SIN_MAX_MAP_FACES, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i64 @GetClearedMemory(i32 %122)
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** @sin_dfaces, align 8
  %125 = load i32, i32* @SIN_MAX_MAP_FACES, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = load i32, i32* @sin_allocatedbspmem, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numedges, align 8
  %132 = load i32, i32* @SIN_MAX_MAP_EDGES, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i64 @GetClearedMemory(i32 %135)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** @sin_dedges, align 8
  %138 = load i32, i32* @SIN_MAX_MAP_EDGES, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = load i32, i32* @sin_allocatedbspmem, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numleaffaces, align 8
  %145 = load i32, i32* @SIN_MAX_MAP_LEAFFACES, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 2
  %148 = trunc i64 %147 to i32
  %149 = call i64 @GetClearedMemory(i32 %148)
  %150 = inttoptr i64 %149 to i16*
  store i16* %150, i16** @sin_dleaffaces, align 8
  %151 = load i32, i32* @SIN_MAX_MAP_LEAFFACES, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 2
  %154 = load i32, i32* @sin_allocatedbspmem, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numleafbrushes, align 8
  %158 = load i32, i32* @SIN_MAX_MAP_LEAFBRUSHES, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 2
  %161 = trunc i64 %160 to i32
  %162 = call i64 @GetClearedMemory(i32 %161)
  %163 = inttoptr i64 %162 to i16*
  store i16* %163, i16** @sin_dleafbrushes, align 8
  %164 = load i32, i32* @SIN_MAX_MAP_LEAFBRUSHES, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 2
  %167 = load i32, i32* @sin_allocatedbspmem, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numsurfedges, align 8
  %171 = load i32, i32* @SIN_MAX_MAP_SURFEDGES, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = call i64 @GetClearedMemory(i32 %174)
  %176 = inttoptr i64 %175 to i32*
  store i32* %176, i32** @sin_dsurfedges, align 8
  %177 = load i32, i32* @SIN_MAX_MAP_SURFEDGES, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = load i32, i32* @sin_allocatedbspmem, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numbrushes, align 8
  %184 = load i32, i32* @SIN_MAX_MAP_BRUSHES, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 4
  %187 = trunc i64 %186 to i32
  %188 = call i64 @GetClearedMemory(i32 %187)
  %189 = inttoptr i64 %188 to i32*
  store i32* %189, i32** @sin_dbrushes, align 8
  %190 = load i32, i32* @SIN_MAX_MAP_BRUSHES, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = load i32, i32* @sin_allocatedbspmem, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numbrushsides, align 8
  %197 = load i32, i32* @SIN_MAX_MAP_BRUSHSIDES, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = call i64 @GetClearedMemory(i32 %200)
  %202 = inttoptr i64 %201 to i32*
  store i32* %202, i32** @sin_dbrushsides, align 8
  %203 = load i32, i32* @SIN_MAX_MAP_BRUSHSIDES, align 4
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 4
  %206 = load i32, i32* @sin_allocatedbspmem, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numareas, align 8
  %210 = load i32, i32* @SIN_MAX_MAP_AREAS, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 4
  %213 = trunc i64 %212 to i32
  %214 = call i64 @GetClearedMemory(i32 %213)
  %215 = inttoptr i64 %214 to i32*
  store i32* %215, i32** @sin_dareas, align 8
  %216 = load i32, i32* @SIN_MAX_MAP_AREAS, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = load i32, i32* @sin_allocatedbspmem, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %220, %218
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numareaportals, align 8
  %223 = load i32, i32* @SIN_MAX_MAP_AREAPORTALS, align 4
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call i64 @GetClearedMemory(i32 %226)
  %228 = inttoptr i64 %227 to i32*
  store i32* %228, i32** @sin_dareaportals, align 8
  %229 = load i32, i32* @SIN_MAX_MAP_AREAPORTALS, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = load i32, i32* @sin_allocatedbspmem, align 4
  %233 = sext i32 %232 to i64
  %234 = add i64 %233, %231
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* @sin_allocatedbspmem, align 4
  store i64 0, i64* @sin_numlightinfo, align 8
  %236 = load i32, i32* @SIN_MAX_MAP_LIGHTINFO, align 4
  %237 = sext i32 %236 to i64
  %238 = mul i64 %237, 4
  %239 = trunc i64 %238 to i32
  %240 = call i64 @GetClearedMemory(i32 %239)
  %241 = inttoptr i64 %240 to i32*
  store i32* %241, i32** @sin_lightinfo, align 8
  %242 = load i32, i32* @SIN_MAX_MAP_LIGHTINFO, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = load i32, i32* @sin_allocatedbspmem, align 4
  %246 = sext i32 %245 to i64
  %247 = add i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* @sin_allocatedbspmem, align 4
  %249 = call i32 @Log_Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %250 = load i32, i32* @sin_allocatedbspmem, align 4
  %251 = call i32 @PrintMemorySize(i32 %250)
  %252 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @PrintMemorySize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
