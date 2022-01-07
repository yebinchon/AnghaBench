; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_PointInsideFace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_PointInsideFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32**, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_PointInsideFace(i32 %0, i32* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store float %2, float* %7, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 5), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %4, align 4
  br label %107

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 4), align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %18, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 3), align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %17, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %102, %23
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %33
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @abs(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %16, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32*, i32** %56, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32*, i32** %66, i64 %76
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @VectorSubtract(i32* %79, i32* %80, i32* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @VectorSubtract(i32* %83, i32* %84, i32* %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @CrossProduct(i32* %87, i32 %90, i32* %91)
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call float @DotProduct(i32* %93, i32* %94)
  %96 = load float, float* %7, align 4
  %97 = fneg float %96
  %98 = fcmp olt float %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %39
  %100 = load i32, i32* @qfalse, align 4
  store i32 %100, i32* %4, align 4
  br label %107

101:                                              ; preds = %39
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %33

105:                                              ; preds = %33
  %106 = load i32, i32* @qtrue, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %99, %21
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32, i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
