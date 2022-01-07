; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_R_GetModeInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_R_GetModeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_8__ = type { i32, i32, float }

@qfalse = common dso_local global i32 0, align 4
@s_numVidModes = common dso_local global i32 0, align 4
@r_customwidth = common dso_local global %struct.TYPE_9__* null, align 8
@r_customheight = common dso_local global %struct.TYPE_10__* null, align 8
@r_buffwidth = common dso_local global %struct.TYPE_12__* null, align 8
@r_buffheight = common dso_local global %struct.TYPE_13__* null, align 8
@r_customPixelAspect = common dso_local global %struct.TYPE_11__* null, align 8
@r_vidModes = common dso_local global %struct.TYPE_8__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_GetModeInfo(i32* %0, i32* %1, i32* %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %7, align 4
  br label %85

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @s_numVidModes, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %7, align 4
  br label %85

26:                                               ; preds = %20
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_customwidth, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_customheight, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_buffwidth, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_buffheight, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_customPixelAspect, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  store float %48, float* %15, align 4
  br label %73

49:                                               ; preds = %26
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_vidModes, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %14, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_buffwidth, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_buffheight, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load float, float* %71, align 4
  store float %72, float* %15, align 4
  br label %73

73:                                               ; preds = %49, %29
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to float
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %15, align 4
  %81 = fmul float %79, %80
  %82 = fdiv float %76, %81
  %83 = load float*, float** %12, align 8
  store float %82, float* %83, align 4
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %73, %24, %18
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
