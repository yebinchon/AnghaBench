; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_StitchSurfaceLightmaps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_StitchSurfaceLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, i32, i32, float }

@MAX_STITCH_CANDIDATES = common dso_local global i32 0, align 4
@MAX_STITCH_LUXELS = common dso_local global i32 0, align 4
@CLUSTER_UNMAPPED = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@numRawLightmaps = common dso_local global i32 0, align 4
@rawLightmaps = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StitchSurfaceLightmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i64, align 8
  %31 = load i32, i32* @MAX_STITCH_CANDIDATES, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %18, align 8
  %34 = alloca %struct.TYPE_3__*, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  %35 = load i32, i32* @MAX_STITCH_LUXELS, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca float*, i64 %36, align 16
  store i64 %36, i64* %30, align 8
  %38 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
