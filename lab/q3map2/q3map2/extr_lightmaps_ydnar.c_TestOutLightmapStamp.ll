; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_TestOutLightmapStamp.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_TestOutLightmapStamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64* }
%struct.TYPE_6__ = type { i32, i32, i32* }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32, i32)* @TestOutLightmapStamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestOutLightmapStamp(%struct.TYPE_5__* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33, %23, %20, %5
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %6, align 4
  br label %142

45:                                               ; preds = %33
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = ashr i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %70, 7
  %72 = shl i32 1, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %54
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %6, align 4
  br label %142

77:                                               ; preds = %54
  %78 = load i32, i32* @qtrue, align 4
  store i32 %78, i32* %6, align 4
  br label %142

79:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %137, %79
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %140

86:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %133, %86
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call float* @BSP_LUXEL(i32 %94, i32 %95, i32 %96)
  store float* %97, float** %17, align 8
  %98 = load float*, float** %17, align 8
  %99 = getelementptr inbounds float, float* %98, i64 0
  %100 = load float, float* %99, align 4
  %101 = fcmp olt float %100, 0.000000e+00
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %133

103:                                              ; preds = %93
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %16, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = ashr i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, 7
  %127 = shl i32 1, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %103
  %131 = load i32, i32* @qfalse, align 4
  store i32 %131, i32* %6, align 4
  br label %142

132:                                              ; preds = %103
  br label %133

133:                                              ; preds = %132, %102
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %87

136:                                              ; preds = %87
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %80

140:                                              ; preds = %80
  %141 = load i32, i32* @qtrue, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %130, %77, %75, %43
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local float* @BSP_LUXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
