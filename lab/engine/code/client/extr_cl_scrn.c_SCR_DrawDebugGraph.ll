; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawDebugGraph.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawDebugGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { float }

@cls = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@re = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@cl_graphheight = common dso_local global %struct.TYPE_12__* null, align 8
@values = common dso_local global float* null, align 8
@current = common dso_local global i32 0, align 4
@cl_graphscale = common dso_local global %struct.TYPE_11__* null, align 8
@cl_graphshift = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawDebugGraph() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 1, i32 0), align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 1, i32 1), align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 1), align 8
  %11 = load i32**, i32*** @g_color_table, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 %10(i32* %13)
  %15 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 0), align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphheight, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphheight, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 0), align 4
  %27 = call i32 %15(i32 %16, i32 %21, i32 %22, i32 %25, i32 0, i32 0, i32 0, i32 0, i32 %26)
  %28 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 1), align 8
  %29 = call i32 %28(i32* null)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %101, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = load float*, float** @values, align 8
  %36 = call i32 @ARRAY_LEN(float* %35)
  %37 = load i32, i32* @current, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %1, align 4
  %41 = load float*, float** @values, align 8
  %42 = call i32 @ARRAY_LEN(float* %41)
  %43 = srem i32 %40, %42
  %44 = sub nsw i32 %39, %43
  %45 = load float*, float** @values, align 8
  %46 = call i32 @ARRAY_LEN(float* %45)
  %47 = srem i32 %44, %46
  store i32 %47, i32* %5, align 4
  %48 = load float*, float** @values, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  store float %52, float* %7, align 4
  %53 = load float, float* %7, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_graphscale, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fmul float %53, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cl_graphshift, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fadd float %57, %60
  store float %61, float* %7, align 4
  %62 = load float, float* %7, align 4
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %64, label %81

64:                                               ; preds = %34
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphheight, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load float, float* %7, align 4
  %69 = fneg float %68
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphheight, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %69, %73
  %75 = fptosi float %74 to i32
  %76 = add nsw i32 1, %75
  %77 = mul nsw i32 %67, %76
  %78 = sitofp i32 %77 to float
  %79 = load float, float* %7, align 4
  %80 = fadd float %79, %78
  store float %80, float* %7, align 4
  br label %81

81:                                               ; preds = %64, %34
  %82 = load float, float* %7, align 4
  %83 = fptosi float %82 to i32
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphheight, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = srem i32 %83, %86
  store i32 %87, i32* %6, align 4
  %88 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 0), align 8
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* %1, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 0), align 4
  %100 = call i32 %88(i32 %94, i32 %97, i32 1, i32 %98, i32 0, i32 0, i32 0, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %81
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %30

104:                                              ; preds = %30
  ret void
}

declare dso_local i32 @ARRAY_LEN(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
