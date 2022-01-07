; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_flares.c_RB_TestFlare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_flares.c_RB_TestFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { float }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i8* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { float }
%struct.TYPE_13__ = type { float, float, float, i8*, i32, i32 }

@backEnd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@glState = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GL_DEPTH_COMPONENT = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@r_flareFade = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_TestFlare(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 2, i32 0), align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 2, i32 0), align 8
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 1), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 0), align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %16 = call i32 @FBO_Bind(i32* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GL_DEPTH_COMPONENT, align 4
  %25 = load i32, i32* @GL_FLOAT, align 4
  %26 = call i32 @qglReadPixels(i32 %20, i32 %23, i32 1, i32 1, i32 %24, i32 %25, float* %3)
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @FBO_Bind(i32* %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 1, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 14
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to float
  %37 = load float, float* %3, align 4
  %38 = fmul float 2.000000e+00, %37
  %39 = fsub float %38, 1.000000e+00
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 1, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 11
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = fmul float %39, %43
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 1, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 10
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to float
  %49 = fsub float %44, %48
  %50 = fdiv float %36, %49
  store float %50, float* %6, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  %54 = fneg float %53
  %55 = load float, float* %6, align 4
  %56 = fneg float %55
  %57 = fsub float %54, %56
  %58 = fcmp olt float %57, 2.400000e+01
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %32
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** @qtrue, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 8
  %72 = fsub float %71, 1.000000e+00
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store float %72, float* %74, align 4
  br label %75

75:                                               ; preds = %67, %62
  %76 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load float, float* %78, align 4
  %80 = fsub float %76, %79
  %81 = fdiv float %80, 1.000000e+03
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_flareFade, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = fmul float %81, %84
  store float %85, float* %5, align 4
  br label %111

86:                                               ; preds = %32
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i8*, i8** @qfalse, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 8
  %96 = fsub float %95, 1.000000e+00
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store float %96, float* %98, align 4
  br label %99

99:                                               ; preds = %91, %86
  %100 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = fsub float %100, %103
  %105 = fdiv float %104, 1.000000e+03
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_flareFade, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 4
  %109 = fmul float %105, %108
  %110 = fsub float 1.000000e+00, %109
  store float %110, float* %5, align 4
  br label %111

111:                                              ; preds = %99, %75
  %112 = load float, float* %5, align 4
  %113 = fcmp olt float %112, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store float 0.000000e+00, float* %5, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load float, float* %5, align 4
  %117 = fcmp ogt float %116, 1.000000e+00
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store float 1.000000e+00, float* %5, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load float, float* %5, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  store float %120, float* %122, align 8
  ret void
}

declare dso_local i32 @FBO_Bind(i32*) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
