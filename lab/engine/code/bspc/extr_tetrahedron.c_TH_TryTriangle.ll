; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_TryTriangle.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_TryTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { float* }
%struct.TYPE_11__ = type { i32, i32 }

@thworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_TryTriangle(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x %struct.TYPE_11__], align 16
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 2), align 8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  store float* %20, float** %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 2), align 8
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  store float* %28, float** %9, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 2), align 8
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  store float* %36, float** %10, align 8
  %37 = load float*, float** %8, align 8
  %38 = load float*, float** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @VectorSubtract(float* %37, float* %38, i32 %39)
  %41 = load float*, float** %10, align 8
  %42 = load float*, float** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @VectorSubtract(float* %41, float* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CrossProduct(i32 %45, i32 %46, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @VectorNormalize(i32 %51)
  %53 = load float*, float** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DotProduct(float* %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %60 = call i32 @TH_CreateTrianglePlanes(i32* %58, %struct.TYPE_11__* %5, %struct.TYPE_11__* %59)
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %139, %1
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 0), align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 1), align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %139

74:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 1), align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %83, %91
  br i1 %92, label %108, label %93

93:                                               ; preds = %78
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 1), align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %93, %78
  br label %113

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %75

113:                                              ; preds = %108, %75
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %139

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 1), align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 1), align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %135 = call i64 @TH_IntersectTrianglePlanes(i32 %125, i32 %133, %struct.TYPE_11__* %5, %struct.TYPE_11__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %143

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %116, %73
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %61

142:                                              ; preds = %61
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %137
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @VectorSubtract(float*, float*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @DotProduct(float*, i32) #1

declare dso_local i32 @TH_CreateTrianglePlanes(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @TH_IntersectTrianglePlanes(i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
