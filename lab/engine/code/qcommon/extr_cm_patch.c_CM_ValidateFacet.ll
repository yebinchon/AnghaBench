; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_ValidateFacet.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_ValidateFacet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@qfalse = common dso_local global i32 0, align 4
@planes = common dso_local global %struct.TYPE_5__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @CM_ValidateFacet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_ValidateFacet(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %2, align 4
  br label %157

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @planes, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %24 = call i32 @Vector4Copy(i32 %22, float* %23)
  %25 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %27 = load float, float* %26, align 4
  %28 = call i32* @BaseWindingForPlane(float* %25, float %27)
  store i32* %28, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %90, %14
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i1 [ false, %29 ], [ %37, %35 ]
  br i1 %39, label %40, label %93

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @FreeWinding(i32* %50)
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %2, align 4
  br label %157

53:                                               ; preds = %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @planes, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %67 = call i32 @Vector4Copy(i32 %65, float* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %53
  %77 = load i32, i32* @vec3_origin, align 4
  %78 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %79 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %80 = call i32 @VectorSubtract(i32 %77, float* %78, float* %79)
  %81 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %82 = load float, float* %81, align 4
  %83 = fneg float %82
  %84 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  store float %83, float* %84, align 4
  br label %85

85:                                               ; preds = %76, %53
  %86 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %87 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %88 = load float, float* %87, align 4
  %89 = call i32 @ChopWindingInPlace(i32** %6, float* %86, float %88, float 0x3FB99999A0000000)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %29

93:                                               ; preds = %38
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @qfalse, align 4
  store i32 %97, i32* %2, align 4
  br label %157

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %101 = load i32*, i32** %100, align 16
  %102 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @WindingBounds(i32* %99, i32* %101, i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @FreeWinding(i32* %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %152, %98
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %118 = load i32*, i32** %117, align 16
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %116, %122
  %124 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* @qfalse, align 4
  store i32 %127, i32* %2, align 4
  br label %157

128:                                              ; preds = %110
  %129 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %130 = load i32*, i32** %129, align 16
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %2, align 4
  br label %157

139:                                              ; preds = %128
  %140 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp sle i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* @qfalse, align 4
  store i32 %150, i32* %2, align 4
  br label %157

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %107

155:                                              ; preds = %107
  %156 = load i32, i32* @qtrue, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %149, %137, %126, %96, %49, %12
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @Vector4Copy(i32, float*) #1

declare dso_local i32* @BaseWindingForPlane(float*, float) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @VectorSubtract(i32, float*, float*) #1

declare dso_local i32 @ChopWindingInPlace(i32**, float*, float, float) #1

declare dso_local i32 @WindingBounds(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
