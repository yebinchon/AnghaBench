; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_ShowImages.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_ShowImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 (...)*, i32 (i32, i8*, i32)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { float, float }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@backEnd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@r_showImages = common dso_local global %struct.TYPE_11__* null, align 8
@GL_QUADS = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%i msec to draw all images\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShowImages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @RB_SetGL2D()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %15 = call i32 @qglClear(i32 %14)
  %16 = call i32 (...) @qglFinish()
  %17 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %18 = call i32 (...) %17()
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %92, %13
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %2, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 4
  %30 = sdiv i32 %29, 20
  %31 = sitofp i32 %30 to float
  store float %31, float* %5, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 4
  %33 = sdiv i32 %32, 15
  %34 = sitofp i32 %33 to float
  store float %34, float* %6, align 4
  %35 = load i32, i32* %1, align 4
  %36 = srem i32 %35, 20
  %37 = sitofp i32 %36 to float
  %38 = load float, float* %5, align 4
  %39 = fmul float %37, %38
  store float %39, float* %3, align 4
  %40 = load i32, i32* %1, align 4
  %41 = sdiv i32 %40, 20
  %42 = sitofp i32 %41 to float
  %43 = load float, float* %6, align 4
  %44 = fmul float %42, %43
  store float %44, float* %4, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_showImages, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %62

49:                                               ; preds = %23
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fdiv float %52, 5.120000e+02
  %54 = load float, float* %5, align 4
  %55 = fmul float %54, %53
  store float %55, float* %5, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fdiv float %58, 5.120000e+02
  %60 = load float, float* %6, align 4
  %61 = fmul float %60, %59
  store float %61, float* %6, align 4
  br label %62

62:                                               ; preds = %49, %23
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = call i32 @GL_Bind(%struct.TYPE_8__* %63)
  %65 = load i32, i32* @GL_QUADS, align 4
  %66 = call i32 @qglBegin(i32 %65)
  %67 = call i32 @qglTexCoord2f(i32 0, i32 0)
  %68 = load float, float* %3, align 4
  %69 = load float, float* %4, align 4
  %70 = call i32 @qglVertex2f(float %68, float %69)
  %71 = call i32 @qglTexCoord2f(i32 1, i32 0)
  %72 = load float, float* %3, align 4
  %73 = load float, float* %5, align 4
  %74 = fadd float %72, %73
  %75 = load float, float* %4, align 4
  %76 = call i32 @qglVertex2f(float %74, float %75)
  %77 = call i32 @qglTexCoord2f(i32 1, i32 1)
  %78 = load float, float* %3, align 4
  %79 = load float, float* %5, align 4
  %80 = fadd float %78, %79
  %81 = load float, float* %4, align 4
  %82 = load float, float* %6, align 4
  %83 = fadd float %81, %82
  %84 = call i32 @qglVertex2f(float %80, float %83)
  %85 = call i32 @qglTexCoord2f(i32 0, i32 1)
  %86 = load float, float* %3, align 4
  %87 = load float, float* %4, align 4
  %88 = load float, float* %6, align 4
  %89 = fadd float %87, %88
  %90 = call i32 @qglVertex2f(float %86, float %89)
  %91 = call i32 (...) @qglEnd()
  br label %92

92:                                               ; preds = %62
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %19

95:                                               ; preds = %19
  %96 = call i32 (...) @qglFinish()
  %97 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %98 = call i32 (...) %97()
  store i32 %98, i32* %8, align 4
  %99 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %100 = load i32, i32* @PRINT_ALL, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 %99(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %103)
  ret void
}

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @qglClear(i32) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @GL_Bind(%struct.TYPE_8__*) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglTexCoord2f(i32, i32) #1

declare dso_local i32 @qglVertex2f(float, float) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
