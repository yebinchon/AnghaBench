; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_AllocMaxBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_AllocMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q1_nummodels = common dso_local global i64 0, align 8
@Q1_MAX_MAP_MODELS = common dso_local global i32 0, align 4
@q1_dmodels = common dso_local global i32* null, align 8
@q1_allocatedbspmem = common dso_local global i32 0, align 4
@q1_visdatasize = common dso_local global i64 0, align 8
@Q1_MAX_MAP_VISIBILITY = common dso_local global i32 0, align 4
@q1_dvisdata = common dso_local global i32* null, align 8
@q1_lightdatasize = common dso_local global i64 0, align 8
@Q1_MAX_MAP_LIGHTING = common dso_local global i32 0, align 4
@q1_dlightdata = common dso_local global i32* null, align 8
@q1_texdatasize = common dso_local global i64 0, align 8
@Q1_MAX_MAP_MIPTEX = common dso_local global i32 0, align 4
@q1_dtexdata = common dso_local global i32* null, align 8
@q1_entdatasize = common dso_local global i64 0, align 8
@Q1_MAX_MAP_ENTSTRING = common dso_local global i32 0, align 4
@q1_dentdata = common dso_local global i8* null, align 8
@q1_numleafs = common dso_local global i64 0, align 8
@Q1_MAX_MAP_LEAFS = common dso_local global i32 0, align 4
@q1_dleafs = common dso_local global i32* null, align 8
@q1_numplanes = common dso_local global i64 0, align 8
@Q1_MAX_MAP_PLANES = common dso_local global i32 0, align 4
@q1_dplanes = common dso_local global i32* null, align 8
@q1_numvertexes = common dso_local global i64 0, align 8
@Q1_MAX_MAP_VERTS = common dso_local global i32 0, align 4
@q1_dvertexes = common dso_local global i32* null, align 8
@q1_numnodes = common dso_local global i64 0, align 8
@Q1_MAX_MAP_NODES = common dso_local global i32 0, align 4
@q1_dnodes = common dso_local global i32* null, align 8
@q1_numtexinfo = common dso_local global i64 0, align 8
@Q1_MAX_MAP_TEXINFO = common dso_local global i32 0, align 4
@q1_texinfo = common dso_local global i32* null, align 8
@q1_numfaces = common dso_local global i64 0, align 8
@Q1_MAX_MAP_FACES = common dso_local global i32 0, align 4
@q1_dfaces = common dso_local global i32* null, align 8
@q1_numclipnodes = common dso_local global i64 0, align 8
@Q1_MAX_MAP_CLIPNODES = common dso_local global i32 0, align 4
@q1_dclipnodes = common dso_local global i32* null, align 8
@q1_numedges = common dso_local global i64 0, align 8
@Q1_MAX_MAP_EDGES = common dso_local global i32 0, align 4
@q1_dedges = common dso_local global i32* null, align 8
@q1_nummarksurfaces = common dso_local global i64 0, align 8
@Q1_MAX_MAP_MARKSURFACES = common dso_local global i32 0, align 4
@q1_dmarksurfaces = common dso_local global i16* null, align 8
@q1_numsurfedges = common dso_local global i64 0, align 8
@Q1_MAX_MAP_SURFEDGES = common dso_local global i32 0, align 4
@q1_dsurfedges = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"allocated \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" of BSP memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_AllocMaxBSP() #0 {
  store i64 0, i64* @q1_nummodels, align 8
  %1 = load i32, i32* @Q1_MAX_MAP_MODELS, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = trunc i64 %3 to i32
  %5 = call i64 @GetMemory(i32 %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** @q1_dmodels, align 8
  %7 = load i32, i32* @Q1_MAX_MAP_MODELS, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_visdatasize, align 8
  %11 = load i32, i32* @Q1_MAX_MAP_VISIBILITY, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i64 @GetMemory(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** @q1_dvisdata, align 8
  %17 = load i32, i32* @Q1_MAX_MAP_VISIBILITY, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = load i32, i32* @q1_allocatedbspmem, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_lightdatasize, align 8
  %24 = load i32, i32* @Q1_MAX_MAP_LIGHTING, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64 @GetMemory(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** @q1_dlightdata, align 8
  %30 = load i32, i32* @Q1_MAX_MAP_LIGHTING, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = load i32, i32* @q1_allocatedbspmem, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_texdatasize, align 8
  %37 = load i32, i32* @Q1_MAX_MAP_MIPTEX, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i64 @GetMemory(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** @q1_dtexdata, align 8
  %43 = load i32, i32* @Q1_MAX_MAP_MIPTEX, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = load i32, i32* @q1_allocatedbspmem, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_entdatasize, align 8
  %50 = load i32, i32* @Q1_MAX_MAP_ENTSTRING, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i64 @GetMemory(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @q1_dentdata, align 8
  %56 = load i32, i32* @Q1_MAX_MAP_ENTSTRING, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = load i32, i32* @q1_allocatedbspmem, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numleafs, align 8
  %63 = load i32, i32* @Q1_MAX_MAP_LEAFS, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i64 @GetMemory(i32 %66)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** @q1_dleafs, align 8
  %69 = load i32, i32* @Q1_MAX_MAP_LEAFS, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = load i32, i32* @q1_allocatedbspmem, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numplanes, align 8
  %76 = load i32, i32* @Q1_MAX_MAP_PLANES, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @GetMemory(i32 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** @q1_dplanes, align 8
  %82 = load i32, i32* @Q1_MAX_MAP_PLANES, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load i32, i32* @q1_allocatedbspmem, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numvertexes, align 8
  %89 = load i32, i32* @Q1_MAX_MAP_VERTS, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i64 @GetMemory(i32 %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** @q1_dvertexes, align 8
  %95 = load i32, i32* @Q1_MAX_MAP_VERTS, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = load i32, i32* @q1_allocatedbspmem, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numnodes, align 8
  %102 = load i32, i32* @Q1_MAX_MAP_NODES, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i64 @GetMemory(i32 %105)
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** @q1_dnodes, align 8
  %108 = load i32, i32* @Q1_MAX_MAP_NODES, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = load i32, i32* @q1_allocatedbspmem, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numtexinfo, align 8
  %115 = load i32, i32* @Q1_MAX_MAP_TEXINFO, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i64 @GetMemory(i32 %118)
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** @q1_texinfo, align 8
  %121 = load i32, i32* @Q1_MAX_MAP_TEXINFO, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = load i32, i32* @q1_allocatedbspmem, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numfaces, align 8
  %128 = load i32, i32* @Q1_MAX_MAP_FACES, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i64 @GetMemory(i32 %131)
  %133 = inttoptr i64 %132 to i32*
  store i32* %133, i32** @q1_dfaces, align 8
  %134 = load i32, i32* @Q1_MAX_MAP_FACES, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = load i32, i32* @q1_allocatedbspmem, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numclipnodes, align 8
  %141 = load i32, i32* @Q1_MAX_MAP_CLIPNODES, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i64 @GetMemory(i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** @q1_dclipnodes, align 8
  %147 = load i32, i32* @Q1_MAX_MAP_CLIPNODES, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = load i32, i32* @q1_allocatedbspmem, align 4
  %151 = sext i32 %150 to i64
  %152 = add i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numedges, align 8
  %154 = load i32, i32* @Q1_MAX_MAP_EDGES, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i64 @GetMemory(i32 %157)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** @q1_dedges, align 8
  %160 = load i32, i32* @Q1_MAX_MAP_EDGES, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = load i32, i32* @q1_allocatedbspmem, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_nummarksurfaces, align 8
  %167 = load i32, i32* @Q1_MAX_MAP_MARKSURFACES, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 2
  %170 = trunc i64 %169 to i32
  %171 = call i64 @GetMemory(i32 %170)
  %172 = inttoptr i64 %171 to i16*
  store i16* %172, i16** @q1_dmarksurfaces, align 8
  %173 = load i32, i32* @Q1_MAX_MAP_MARKSURFACES, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 2
  %176 = load i32, i32* @q1_allocatedbspmem, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* @q1_allocatedbspmem, align 4
  store i64 0, i64* @q1_numsurfedges, align 8
  %180 = load i32, i32* @Q1_MAX_MAP_SURFEDGES, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = call i64 @GetMemory(i32 %183)
  %185 = inttoptr i64 %184 to i32*
  store i32* %185, i32** @q1_dsurfedges, align 8
  %186 = load i32, i32* @Q1_MAX_MAP_SURFEDGES, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = load i32, i32* @q1_allocatedbspmem, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* @q1_allocatedbspmem, align 4
  %193 = call i32 @Log_Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %194 = load i32, i32* @q1_allocatedbspmem, align 4
  %195 = call i32 @PrintMemorySize(i32 %194)
  %196 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GetMemory(i32) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @PrintMemorySize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
