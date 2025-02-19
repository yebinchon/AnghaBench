; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_StitchAllPatches.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_StitchAllPatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_6__ = type { i64, i8* }

@qfalse = common dso_local global i32 0, align 4
@s_worldData = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SF_GRID = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stitched %d LoD cracks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_StitchAllPatches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, i32* @qfalse, align 4
  store i32 %6, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %43, %5
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @s_worldData, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @s_worldData, i32 0, i32 1), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SF_GRID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %43

25:                                               ; preds = %11
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %43

31:                                               ; preds = %25
  %32 = load i8*, i8** @qtrue, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @qtrue, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i64 @R_TryStitchingPatch(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %31, %30, %24
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %7

46:                                               ; preds = %7
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %5, label %50

50:                                               ; preds = %47
  %51 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %52 = load i32, i32* @PRINT_ALL, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 %51(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53)
  ret void
}

declare dso_local i64 @R_TryStitchingPatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
