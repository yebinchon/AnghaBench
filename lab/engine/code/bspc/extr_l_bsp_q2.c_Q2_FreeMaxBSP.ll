; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_FreeMaxBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_FreeMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nummodels = common dso_local global i64 0, align 8
@dmodels = common dso_local global i32* null, align 8
@visdatasize = common dso_local global i64 0, align 8
@dvisdata = common dso_local global i32* null, align 8
@dvis = common dso_local global i32* null, align 8
@lightdatasize = common dso_local global i64 0, align 8
@dlightdata = common dso_local global i32* null, align 8
@entdatasize = common dso_local global i64 0, align 8
@dentdata = common dso_local global i32* null, align 8
@numleafs = common dso_local global i64 0, align 8
@dleafs = common dso_local global i32* null, align 8
@numplanes = common dso_local global i64 0, align 8
@dplanes = common dso_local global i32* null, align 8
@numvertexes = common dso_local global i64 0, align 8
@dvertexes = common dso_local global i32* null, align 8
@numnodes = common dso_local global i64 0, align 8
@dnodes = common dso_local global i32* null, align 8
@numfaces = common dso_local global i64 0, align 8
@dfaces = common dso_local global i32* null, align 8
@numedges = common dso_local global i64 0, align 8
@dedges = common dso_local global i32* null, align 8
@numleaffaces = common dso_local global i64 0, align 8
@dleaffaces = common dso_local global i32* null, align 8
@numleafbrushes = common dso_local global i64 0, align 8
@dleafbrushes = common dso_local global i32* null, align 8
@numsurfedges = common dso_local global i64 0, align 8
@dsurfedges = common dso_local global i32* null, align 8
@numbrushes = common dso_local global i64 0, align 8
@dbrushes = common dso_local global i32* null, align 8
@numbrushsides = common dso_local global i64 0, align 8
@dbrushsides = common dso_local global i32* null, align 8
@numareas = common dso_local global i64 0, align 8
@dareas = common dso_local global i32* null, align 8
@numareaportals = common dso_local global i64 0, align 8
@dareaportals = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"freed \00", align 1
@allocatedbspmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" of BSP memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_FreeMaxBSP() #0 {
  store i64 0, i64* @nummodels, align 8
  %1 = load i32*, i32** @dmodels, align 8
  %2 = call i32 @FreeMemory(i32* %1)
  store i32* null, i32** @dmodels, align 8
  store i64 0, i64* @visdatasize, align 8
  %3 = load i32*, i32** @dvisdata, align 8
  %4 = call i32 @FreeMemory(i32* %3)
  store i32* null, i32** @dvisdata, align 8
  store i32* null, i32** @dvis, align 8
  store i64 0, i64* @lightdatasize, align 8
  %5 = load i32*, i32** @dlightdata, align 8
  %6 = call i32 @FreeMemory(i32* %5)
  store i32* null, i32** @dlightdata, align 8
  store i64 0, i64* @entdatasize, align 8
  %7 = load i32*, i32** @dentdata, align 8
  %8 = call i32 @FreeMemory(i32* %7)
  store i32* null, i32** @dentdata, align 8
  store i64 0, i64* @numleafs, align 8
  %9 = load i32*, i32** @dleafs, align 8
  %10 = call i32 @FreeMemory(i32* %9)
  store i32* null, i32** @dleafs, align 8
  store i64 0, i64* @numplanes, align 8
  %11 = load i32*, i32** @dplanes, align 8
  %12 = call i32 @FreeMemory(i32* %11)
  store i32* null, i32** @dplanes, align 8
  store i64 0, i64* @numvertexes, align 8
  %13 = load i32*, i32** @dvertexes, align 8
  %14 = call i32 @FreeMemory(i32* %13)
  store i32* null, i32** @dvertexes, align 8
  store i64 0, i64* @numnodes, align 8
  %15 = load i32*, i32** @dnodes, align 8
  %16 = call i32 @FreeMemory(i32* %15)
  store i32* null, i32** @dnodes, align 8
  store i64 0, i64* @numfaces, align 8
  %17 = load i32*, i32** @dfaces, align 8
  %18 = call i32 @FreeMemory(i32* %17)
  store i32* null, i32** @dfaces, align 8
  store i64 0, i64* @numedges, align 8
  %19 = load i32*, i32** @dedges, align 8
  %20 = call i32 @FreeMemory(i32* %19)
  store i32* null, i32** @dedges, align 8
  store i64 0, i64* @numleaffaces, align 8
  %21 = load i32*, i32** @dleaffaces, align 8
  %22 = call i32 @FreeMemory(i32* %21)
  store i32* null, i32** @dleaffaces, align 8
  store i64 0, i64* @numleafbrushes, align 8
  %23 = load i32*, i32** @dleafbrushes, align 8
  %24 = call i32 @FreeMemory(i32* %23)
  store i32* null, i32** @dleafbrushes, align 8
  store i64 0, i64* @numsurfedges, align 8
  %25 = load i32*, i32** @dsurfedges, align 8
  %26 = call i32 @FreeMemory(i32* %25)
  store i32* null, i32** @dsurfedges, align 8
  store i64 0, i64* @numbrushes, align 8
  %27 = load i32*, i32** @dbrushes, align 8
  %28 = call i32 @FreeMemory(i32* %27)
  store i32* null, i32** @dbrushes, align 8
  store i64 0, i64* @numbrushsides, align 8
  %29 = load i32*, i32** @dbrushsides, align 8
  %30 = call i32 @FreeMemory(i32* %29)
  store i32* null, i32** @dbrushsides, align 8
  store i64 0, i64* @numareas, align 8
  %31 = load i32*, i32** @dareas, align 8
  %32 = call i32 @FreeMemory(i32* %31)
  store i32* null, i32** @dareas, align 8
  store i64 0, i64* @numareaportals, align 8
  %33 = load i32*, i32** @dareaportals, align 8
  %34 = call i32 @FreeMemory(i32* %33)
  store i32* null, i32** @dareaportals, align 8
  %35 = call i32 @Log_Print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @allocatedbspmem, align 8
  %37 = call i32 @PrintMemorySize(i64 %36)
  %38 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @allocatedbspmem, align 8
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
