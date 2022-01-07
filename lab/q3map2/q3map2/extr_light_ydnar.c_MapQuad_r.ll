; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapQuad_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapQuad_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float** }

@subdivideThreshold = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__**, i32, i32*, i32*)* @MapQuad_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MapQuad_r(i32* %0, i32* %1, %struct.TYPE_7__** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x %struct.TYPE_7__], align 16
  %14 = alloca [4 x %struct.TYPE_7__*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 -1, i32* %15, align 4
  store float 0.000000e+00, float* %22, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %75, %6
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load float**, float*** %32, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  store float* %35, float** %17, align 8
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  %39 = srem i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load float**, float*** %43, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 0
  %46 = load float*, float** %45, align 8
  store float* %46, float** %18, align 8
  %47 = load float*, float** %17, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %18, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fsub float %49, %52
  store float %53, float* %19, align 4
  %54 = load float*, float** %17, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %18, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = fsub float %56, %59
  store float %60, float* %20, align 4
  %61 = load float, float* %19, align 4
  %62 = load float, float* %19, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %20, align 4
  %65 = load float, float* %20, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %63, %66
  store float %67, float* %21, align 4
  %68 = load float, float* %21, align 4
  %69 = load float, float* %22, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %26
  %72 = load float, float* %21, align 4
  store float %72, float* %22, align 4
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %26
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load float, float* %22, align 4
  %83 = load float, float* @subdivideThreshold, align 4
  %84 = fcmp ole float %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  br label %208

86:                                               ; preds = %81
  %87 = load i32, i32* %15, align 4
  %88 = and i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  %97 = srem i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %94, i64 %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %102 = call i32 @LerpDrawVert(%struct.TYPE_7__* %93, %struct.TYPE_7__* %100, %struct.TYPE_7__* %101)
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %103, i64 %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 3
  %112 = srem i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %109, i64 %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %117 = call i32 @LerpDrawVert(%struct.TYPE_7__* %108, %struct.TYPE_7__* %115, %struct.TYPE_7__* %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @MapSingleLuxel(i32* %118, i32* %119, %struct.TYPE_7__* %120, i32 %121, i32 1, i32* %122, i32* %123)
  %125 = load i32*, i32** %7, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @MapSingleLuxel(i32* %125, i32* %126, %struct.TYPE_7__* %127, i32 %128, i32 1, i32* %129, i32* %130)
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %86
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %135, i64 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %138, align 16
  %139 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %140 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 1
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %140, align 8
  %141 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %142 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 2
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %142, align 16
  %143 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %143, i64 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 3
  store %struct.TYPE_7__* %145, %struct.TYPE_7__** %146, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  %150 = load i32, i32* %10, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = load i32*, i32** %12, align 8
  call void @MapQuad_r(i32* %147, i32* %148, %struct.TYPE_7__** %149, i32 %150, i32* %151, i32* %152)
  %153 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %154 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  store %struct.TYPE_7__* %153, %struct.TYPE_7__** %154, align 16
  %155 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %155, i64 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 1
  store %struct.TYPE_7__* %157, %struct.TYPE_7__** %158, align 8
  %159 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %159, i64 2
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 2
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %162, align 16
  %163 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %164 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 3
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %164, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  %168 = load i32, i32* %10, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32*, i32** %12, align 8
  call void @MapQuad_r(i32* %165, i32* %166, %struct.TYPE_7__** %167, i32 %168, i32* %169, i32* %170)
  br label %208

171:                                              ; preds = %86
  %172 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %172, i64 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %175, align 16
  %176 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %176, i64 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 1
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %179, align 8
  %180 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %181 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 2
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %181, align 16
  %182 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %183 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 3
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %183, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  %187 = load i32, i32* %10, align 4
  %188 = load i32*, i32** %11, align 8
  %189 = load i32*, i32** %12, align 8
  call void @MapQuad_r(i32* %184, i32* %185, %struct.TYPE_7__** %186, i32 %187, i32* %188, i32* %189)
  %190 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 1
  %191 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %191, align 16
  %192 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %13, i64 0, i64 0
  %193 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 1
  store %struct.TYPE_7__* %192, %struct.TYPE_7__** %193, align 8
  %194 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %194, i64 2
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 2
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %197, align 16
  %198 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %198, i64 3
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 3
  store %struct.TYPE_7__* %200, %struct.TYPE_7__** %201, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = getelementptr inbounds [4 x %struct.TYPE_7__*], [4 x %struct.TYPE_7__*]* %14, i64 0, i64 0
  %205 = load i32, i32* %10, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = load i32*, i32** %12, align 8
  call void @MapQuad_r(i32* %202, i32* %203, %struct.TYPE_7__** %204, i32 %205, i32* %206, i32* %207)
  br label %208

208:                                              ; preds = %85, %171, %134
  ret void
}

declare dso_local i32 @LerpDrawVert(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @MapSingleLuxel(i32*, i32*, %struct.TYPE_7__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
