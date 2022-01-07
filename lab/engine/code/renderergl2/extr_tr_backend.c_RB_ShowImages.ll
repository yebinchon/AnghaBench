; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_ShowImages.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_ShowImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (...)*, i32 (i32, i8*, i32)* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { float, float }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@r_showImages = common dso_local global %struct.TYPE_10__* null, align 8
@TB_COLORMAP = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%i msec to draw all images\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShowImages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = call i32 (...) @RB_SetGL2D()
  %11 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %12 = call i32 @qglClear(i32 %11)
  %13 = call i32 (...) @qglFinish()
  %14 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %15 = call i32 (...) %14()
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %93, %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %2, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 0), align 4
  %27 = sdiv i32 %26, 20
  %28 = sitofp i32 %27 to float
  store float %28, float* %5, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 4
  %30 = sdiv i32 %29, 15
  %31 = sitofp i32 %30 to float
  store float %31, float* %6, align 4
  %32 = load i32, i32* %1, align 4
  %33 = srem i32 %32, 20
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %5, align 4
  %36 = fmul float %34, %35
  store float %36, float* %3, align 4
  %37 = load i32, i32* %1, align 4
  %38 = sdiv i32 %37, 20
  %39 = sitofp i32 %38 to float
  %40 = load float, float* %6, align 4
  %41 = fmul float %39, %40
  store float %41, float* %4, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_showImages, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %59

46:                                               ; preds = %20
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = fdiv float %49, 5.120000e+02
  %51 = load float, float* %5, align 4
  %52 = fmul float %51, %50
  store float %52, float* %5, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fdiv float %55, 5.120000e+02
  %57 = load float, float* %6, align 4
  %58 = fmul float %57, %56
  store float %58, float* %6, align 4
  br label %59

59:                                               ; preds = %46, %20
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = load i32, i32* @TB_COLORMAP, align 4
  %62 = call i32 @GL_BindToTMU(%struct.TYPE_7__* %60, i32 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = load float, float* %3, align 4
  %66 = load float, float* %4, align 4
  %67 = call i32 @VectorSet4(i32 %64, float %65, float %66, i32 0, i32 1)
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load float, float* %3, align 4
  %71 = load float, float* %5, align 4
  %72 = fadd float %70, %71
  %73 = load float, float* %4, align 4
  %74 = call i32 @VectorSet4(i32 %69, float %72, float %73, i32 0, i32 1)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = load float, float* %3, align 4
  %78 = load float, float* %5, align 4
  %79 = fadd float %77, %78
  %80 = load float, float* %4, align 4
  %81 = load float, float* %6, align 4
  %82 = fadd float %80, %81
  %83 = call i32 @VectorSet4(i32 %76, float %79, float %82, i32 0, i32 1)
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load float, float* %3, align 4
  %87 = load float, float* %4, align 4
  %88 = load float, float* %6, align 4
  %89 = fadd float %87, %88
  %90 = call i32 @VectorSet4(i32 %85, float %86, float %89, i32 0, i32 1)
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %92 = call i32 @RB_InstantQuad(i32* %91)
  br label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %16

96:                                               ; preds = %16
  %97 = call i32 (...) @qglFinish()
  %98 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %99 = call i32 (...) %98()
  store i32 %99, i32* %8, align 4
  %100 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 1), align 8
  %101 = load i32, i32* @PRINT_ALL, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 %100(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %104)
  ret void
}

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @qglClear(i32) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @GL_BindToTMU(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @VectorSet4(i32, float, float, i32, i32) #1

declare dso_local i32 @RB_InstantQuad(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
