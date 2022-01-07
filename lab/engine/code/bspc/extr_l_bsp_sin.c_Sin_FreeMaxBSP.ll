; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_sin.c_Sin_FreeMaxBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_sin.c_Sin_FreeMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_nummodels = common dso_local global i64 0, align 8
@sin_dmodels = common dso_local global i32* null, align 8
@sin_visdatasize = common dso_local global i64 0, align 8
@sin_dvisdata = common dso_local global i32* null, align 8
@sin_dvis = common dso_local global i32* null, align 8
@sin_lightdatasize = common dso_local global i64 0, align 8
@sin_dlightdata = common dso_local global i32* null, align 8
@sin_entdatasize = common dso_local global i64 0, align 8
@sin_dentdata = common dso_local global i32* null, align 8
@sin_numleafs = common dso_local global i64 0, align 8
@sin_dleafs = common dso_local global i32* null, align 8
@sin_numplanes = common dso_local global i64 0, align 8
@sin_dplanes = common dso_local global i32* null, align 8
@sin_numvertexes = common dso_local global i64 0, align 8
@sin_dvertexes = common dso_local global i32* null, align 8
@sin_numnodes = common dso_local global i64 0, align 8
@sin_dnodes = common dso_local global i32* null, align 8
@sin_numtexinfo = common dso_local global i64 0, align 8
@sin_texinfo = common dso_local global i32* null, align 8
@sin_numfaces = common dso_local global i64 0, align 8
@sin_dfaces = common dso_local global i32* null, align 8
@sin_numedges = common dso_local global i64 0, align 8
@sin_dedges = common dso_local global i32* null, align 8
@sin_numleaffaces = common dso_local global i64 0, align 8
@sin_dleaffaces = common dso_local global i32* null, align 8
@sin_numleafbrushes = common dso_local global i64 0, align 8
@sin_dleafbrushes = common dso_local global i32* null, align 8
@sin_numsurfedges = common dso_local global i64 0, align 8
@sin_dsurfedges = common dso_local global i32* null, align 8
@sin_numbrushes = common dso_local global i64 0, align 8
@sin_dbrushes = common dso_local global i32* null, align 8
@sin_numbrushsides = common dso_local global i64 0, align 8
@sin_dbrushsides = common dso_local global i32* null, align 8
@sin_numareas = common dso_local global i64 0, align 8
@sin_dareas = common dso_local global i32* null, align 8
@sin_numareaportals = common dso_local global i64 0, align 8
@sin_dareaportals = common dso_local global i32* null, align 8
@sin_numlightinfo = common dso_local global i64 0, align 8
@sin_lightinfo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"freed \00", align 1
@sin_allocatedbspmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" of BSP memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sin_FreeMaxBSP() #0 {
  store i64 0, i64* @sin_nummodels, align 8
  %1 = load i32*, i32** @sin_dmodels, align 8
  %2 = call i32 @FreeMemory(i32* %1)
  store i32* null, i32** @sin_dmodels, align 8
  store i64 0, i64* @sin_visdatasize, align 8
  %3 = load i32*, i32** @sin_dvisdata, align 8
  %4 = call i32 @FreeMemory(i32* %3)
  store i32* null, i32** @sin_dvisdata, align 8
  store i32* null, i32** @sin_dvis, align 8
  store i64 0, i64* @sin_lightdatasize, align 8
  %5 = load i32*, i32** @sin_dlightdata, align 8
  %6 = call i32 @FreeMemory(i32* %5)
  store i32* null, i32** @sin_dlightdata, align 8
  store i64 0, i64* @sin_entdatasize, align 8
  %7 = load i32*, i32** @sin_dentdata, align 8
  %8 = call i32 @FreeMemory(i32* %7)
  store i32* null, i32** @sin_dentdata, align 8
  store i64 0, i64* @sin_numleafs, align 8
  %9 = load i32*, i32** @sin_dleafs, align 8
  %10 = call i32 @FreeMemory(i32* %9)
  store i32* null, i32** @sin_dleafs, align 8
  store i64 0, i64* @sin_numplanes, align 8
  %11 = load i32*, i32** @sin_dplanes, align 8
  %12 = call i32 @FreeMemory(i32* %11)
  store i32* null, i32** @sin_dplanes, align 8
  store i64 0, i64* @sin_numvertexes, align 8
  %13 = load i32*, i32** @sin_dvertexes, align 8
  %14 = call i32 @FreeMemory(i32* %13)
  store i32* null, i32** @sin_dvertexes, align 8
  store i64 0, i64* @sin_numnodes, align 8
  %15 = load i32*, i32** @sin_dnodes, align 8
  %16 = call i32 @FreeMemory(i32* %15)
  store i32* null, i32** @sin_dnodes, align 8
  store i64 0, i64* @sin_numtexinfo, align 8
  %17 = load i32*, i32** @sin_texinfo, align 8
  %18 = call i32 @FreeMemory(i32* %17)
  store i32* null, i32** @sin_texinfo, align 8
  store i64 0, i64* @sin_numfaces, align 8
  %19 = load i32*, i32** @sin_dfaces, align 8
  %20 = call i32 @FreeMemory(i32* %19)
  store i32* null, i32** @sin_dfaces, align 8
  store i64 0, i64* @sin_numedges, align 8
  %21 = load i32*, i32** @sin_dedges, align 8
  %22 = call i32 @FreeMemory(i32* %21)
  store i32* null, i32** @sin_dedges, align 8
  store i64 0, i64* @sin_numleaffaces, align 8
  %23 = load i32*, i32** @sin_dleaffaces, align 8
  %24 = call i32 @FreeMemory(i32* %23)
  store i32* null, i32** @sin_dleaffaces, align 8
  store i64 0, i64* @sin_numleafbrushes, align 8
  %25 = load i32*, i32** @sin_dleafbrushes, align 8
  %26 = call i32 @FreeMemory(i32* %25)
  store i32* null, i32** @sin_dleafbrushes, align 8
  store i64 0, i64* @sin_numsurfedges, align 8
  %27 = load i32*, i32** @sin_dsurfedges, align 8
  %28 = call i32 @FreeMemory(i32* %27)
  store i32* null, i32** @sin_dsurfedges, align 8
  store i64 0, i64* @sin_numbrushes, align 8
  %29 = load i32*, i32** @sin_dbrushes, align 8
  %30 = call i32 @FreeMemory(i32* %29)
  store i32* null, i32** @sin_dbrushes, align 8
  store i64 0, i64* @sin_numbrushsides, align 8
  %31 = load i32*, i32** @sin_dbrushsides, align 8
  %32 = call i32 @FreeMemory(i32* %31)
  store i32* null, i32** @sin_dbrushsides, align 8
  store i64 0, i64* @sin_numareas, align 8
  %33 = load i32*, i32** @sin_dareas, align 8
  %34 = call i32 @FreeMemory(i32* %33)
  store i32* null, i32** @sin_dareas, align 8
  store i64 0, i64* @sin_numareaportals, align 8
  %35 = load i32*, i32** @sin_dareaportals, align 8
  %36 = call i32 @FreeMemory(i32* %35)
  store i32* null, i32** @sin_dareaportals, align 8
  store i64 0, i64* @sin_numlightinfo, align 8
  %37 = load i32*, i32** @sin_lightinfo, align 8
  %38 = call i32 @FreeMemory(i32* %37)
  store i32* null, i32** @sin_lightinfo, align 8
  %39 = call i32 @Log_Print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @sin_allocatedbspmem, align 8
  %41 = call i32 @PrintMemorySize(i64 %40)
  %42 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @sin_allocatedbspmem, align 8
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @PrintMemorySize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
