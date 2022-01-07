; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ApproximateTriangle_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ApproximateTriangle_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float** }

@qfalse = common dso_local global i64 0, align 8
@subdivideThreshold = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_9__**)* @ApproximateTriangle_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ApproximateTriangle_r(i32* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca [3 x %struct.TYPE_9__*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i64 @ApproximateLuxel(i32* %14, %struct.TYPE_9__* %17)
  %19 = load i64, i64* @qfalse, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @qfalse, align 8
  store i64 %22, i64* %3, align 8
  br label %171

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i64 @ApproximateLuxel(i32* %24, %struct.TYPE_9__* %27)
  %29 = load i64, i64* @qfalse, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64, i64* @qfalse, align 8
  store i64 %32, i64* %3, align 8
  br label %171

33:                                               ; preds = %23
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %35, i64 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call i64 @ApproximateLuxel(i32* %34, %struct.TYPE_9__* %37)
  %39 = load i64, i64* @qfalse, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @qfalse, align 8
  store i64 %42, i64* %3, align 8
  br label %171

43:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %113, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %116

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load float**, float*** %53, align 8
  %55 = getelementptr inbounds float*, float** %54, i64 0
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 0
  %58 = load float, float* %57, align 4
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = srem i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load float**, float*** %66, align 8
  %68 = getelementptr inbounds float*, float** %67, i64 0
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  %71 = load float, float* %70, align 4
  %72 = fsub float %58, %71
  store float %72, float* %10, align 4
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load float**, float*** %78, align 8
  %80 = getelementptr inbounds float*, float** %79, i64 0
  %81 = load float*, float** %80, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = srem i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %84, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load float**, float*** %91, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 0
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %83, %96
  store float %97, float* %11, align 4
  %98 = load float, float* %10, align 4
  %99 = load float, float* %10, align 4
  %100 = fmul float %98, %99
  %101 = load float, float* %11, align 4
  %102 = load float, float* %11, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %100, %103
  %105 = call float @sqrt(float %104)
  store float %105, float* %12, align 4
  %106 = load float, float* %12, align 4
  %107 = load float, float* %13, align 4
  %108 = fcmp ogt float %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %47
  %110 = load float, float* %12, align 4
  store float %110, float* %13, align 4
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %47
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %44

116:                                              ; preds = %44
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load float, float* %13, align 4
  %121 = load float, float* @subdivideThreshold, align 4
  %122 = fcmp olt float %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %116
  %124 = load i64, i64* @qtrue, align 8
  store i64 %124, i64* %3, align 8
  br label %171

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = srem i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = call i32 @LerpDrawVert(%struct.TYPE_9__* %130, %struct.TYPE_9__* %137, %struct.TYPE_9__* %6)
  %139 = load i32*, i32** %4, align 8
  %140 = call i64 @ApproximateLuxel(i32* %139, %struct.TYPE_9__* %6)
  %141 = load i64, i64* @qfalse, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %125
  %144 = load i64, i64* @qfalse, align 8
  store i64 %144, i64* %3, align 8
  br label %171

145:                                              ; preds = %125
  %146 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %147 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 0
  %148 = call i32 @VectorCopy(%struct.TYPE_9__** %146, %struct.TYPE_9__** %147)
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 %150
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %151, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 0
  %154 = call i64 @ApproximateTriangle_r(i32* %152, %struct.TYPE_9__** %153)
  %155 = load i64, i64* @qfalse, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i64, i64* @qfalse, align 8
  store i64 %158, i64* %3, align 8
  br label %171

159:                                              ; preds = %145
  %160 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %161 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 0
  %162 = call i32 @VectorCopy(%struct.TYPE_9__** %160, %struct.TYPE_9__** %161)
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = srem i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 %166
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %167, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %7, i64 0, i64 0
  %170 = call i64 @ApproximateTriangle_r(i32* %168, %struct.TYPE_9__** %169)
  store i64 %170, i64* %3, align 8
  br label %171

171:                                              ; preds = %159, %157, %143, %123, %41, %31, %21
  %172 = load i64, i64* %3, align 8
  ret i64 %172
}

declare dso_local i64 @ApproximateLuxel(i32*, %struct.TYPE_9__*) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @LerpDrawVert(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @VectorCopy(%struct.TYPE_9__**, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
