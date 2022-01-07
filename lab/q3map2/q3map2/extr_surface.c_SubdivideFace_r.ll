; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SubdivideFace_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SubdivideFace_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"SubdivideFace_r: Bad w->numpoints (%d < 3)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_9__*, i32, float)* @SubdivideFace_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubdivideFace_r(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32 %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x float*], align 16
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  store float 0x3FB99999A0000000, float* %16, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %158

28:                                               ; preds = %6
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 0
  %40 = load float*, float** %39, align 16
  %41 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 1
  %42 = load float*, float** %41, align 8
  %43 = call i32 @ClearBounds(float* %40, float* %42)
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %63, %38
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 0
  %59 = load float*, float** %58, align 16
  %60 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 1
  %61 = load float*, float** %60, align 8
  %62 = call i32 @AddPointToBounds(i32 %57, float* %59, float* %61)
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %44

66:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %146, %66
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %149

70:                                               ; preds = %67
  store float* null, float** %22, align 8
  store float* null, float** %23, align 8
  %71 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 0
  %72 = load float*, float** %71, align 16
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float, float* %12, align 4
  %78 = fdiv float %76, %77
  %79 = call float @floor(float %78)
  %80 = load float, float* %12, align 4
  %81 = fmul float %79, %80
  %82 = fptosi float %81 to i32
  store i32 %82, i32* %17, align 4
  %83 = getelementptr inbounds [2 x float*], [2 x float*]* %15, i64 0, i64 1
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* %12, align 4
  %90 = fdiv float %88, %89
  %91 = call float @ceil(float %90)
  %92 = load float, float* %12, align 4
  %93 = fmul float %91, %92
  %94 = fptosi float %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %17, align 4
  %96 = sitofp i32 %95 to float
  %97 = load float, float* %12, align 4
  %98 = fadd float %96, %97
  %99 = load float*, float** %22, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  %103 = load float*, float** %23, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  store float -1.000000e+00, float* %106, align 4
  %107 = load float*, float** %22, align 8
  %108 = load float*, float** %23, align 8
  %109 = call float @DotProduct(float* %107, float* %108)
  store float %109, float* %24, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sitofp i32 %112 to float
  %114 = load float, float* %12, align 4
  %115 = fcmp ogt float %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %70
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = load float*, float** %23, align 8
  %119 = load float, float* %24, align 4
  %120 = call i32 @ClipWindingEpsilon(%struct.TYPE_9__* %117, float* %118, float %119, float 0x3FB99999A0000000, %struct.TYPE_9__** %19, %struct.TYPE_9__** %20)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %122 = icmp eq %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %10, align 8
  br label %144

125:                                              ; preds = %116
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %127 = icmp eq %struct.TYPE_9__* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %10, align 8
  br label %143

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load float, float* %12, align 4
  call void @SubdivideFace_r(i32* %131, i32* %132, i32* %133, %struct.TYPE_9__* %134, i32 %135, float %136)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load float, float* %12, align 4
  call void @SubdivideFace_r(i32* %137, i32* %138, i32* %139, %struct.TYPE_9__* %140, i32 %141, float %142)
  br label %158

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %123
  br label %145

145:                                              ; preds = %144, %70
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %67

149:                                              ; preds = %67
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %154 = call %struct.TYPE_10__* @DrawSurfaceForSide(i32* %150, i32* %151, i32* %152, %struct.TYPE_9__* %153)
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %21, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %130, %27
  ret void
}

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @ClearBounds(float*, float*) #1

declare dso_local i32 @AddPointToBounds(i32, float*, float*) #1

declare dso_local float @floor(float) #1

declare dso_local float @ceil(float) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_9__*, float*, float, float, %struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local %struct.TYPE_10__* @DrawSurfaceForSide(i32*, i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
