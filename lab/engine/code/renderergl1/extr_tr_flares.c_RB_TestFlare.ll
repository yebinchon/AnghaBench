; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_TestFlare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_TestFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { float }
%struct.TYPE_12__ = type { float, float, float, i8*, i32, i32 }

@backEnd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@glState = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GL_DEPTH_COMPONENT = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@r_flareFade = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_TestFlare(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 2, i32 0), align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 2, i32 0), align 8
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glState, i32 0, i32 0), align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GL_DEPTH_COMPONENT, align 4
  %17 = load i32, i32* @GL_FLOAT, align 4
  %18 = call i32 @qglReadPixels(i32 %12, i32 %15, i32 1, i32 1, i32 %16, i32 %17, float* %3)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 14
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to float
  %23 = load float, float* %3, align 4
  %24 = fmul float 2.000000e+00, %23
  %25 = fsub float %24, 1.000000e+00
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 11
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to float
  %30 = fmul float %25, %29
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 10
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to float
  %35 = fsub float %30, %34
  %36 = fdiv float %22, %35
  store float %36, float* %6, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 8
  %40 = fneg float %39
  %41 = load float, float* %6, align 4
  %42 = fneg float %41
  %43 = fsub float %40, %42
  %44 = fcmp olt float %43, 2.400000e+01
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** @qtrue, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  %58 = fsub float %57, 1.000000e+00
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store float %58, float* %60, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = fsub float %62, %65
  %67 = fdiv float %66, 1.000000e+03
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_flareFade, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = fmul float %67, %70
  store float %71, float* %5, align 4
  br label %97

72:                                               ; preds = %1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8*, i8** @qfalse, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  %82 = fsub float %81, 1.000000e+00
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store float %82, float* %84, align 4
  br label %85

85:                                               ; preds = %77, %72
  %86 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = fsub float %86, %89
  %91 = fdiv float %90, 1.000000e+03
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_flareFade, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = fmul float %91, %94
  %96 = fsub float 1.000000e+00, %95
  store float %96, float* %5, align 4
  br label %97

97:                                               ; preds = %85, %61
  %98 = load float, float* %5, align 4
  %99 = fcmp olt float %98, 0.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store float 0.000000e+00, float* %5, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load float, float* %5, align 4
  %103 = fcmp ogt float %102, 1.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store float 1.000000e+00, float* %5, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load float, float* %5, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  store float %106, float* %108, align 8
  ret void
}

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
