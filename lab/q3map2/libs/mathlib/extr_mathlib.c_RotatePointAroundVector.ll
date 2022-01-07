; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_RotatePointAroundVector.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_RotatePointAroundVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RotatePointAroundVector(float* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %17, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float %21, float* %23, align 4
  %24 = load float*, float** %6, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %17, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  store float %26, float* %28, align 4
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %17, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  store float %31, float* %33, align 4
  %34 = load float*, float** %15, align 8
  %35 = load float*, float** %6, align 8
  %36 = call i32 @PerpendicularVector(float* %34, float* %35)
  %37 = load float*, float** %15, align 8
  %38 = load float*, float** %17, align 8
  %39 = load float*, float** %16, align 8
  %40 = call i32 @CrossProduct(float* %37, float* %38, float* %39)
  %41 = load float*, float** %15, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %45 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 0, i64 0
  store float %43, float* %45, align 16
  %46 = load float*, float** %15, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], [3 x float]* %49, i64 0, i64 0
  store float %48, float* %50, align 4
  %51 = load float*, float** %15, align 8
  %52 = getelementptr inbounds float, float* %51, i64 2
  %53 = load float, float* %52, align 4
  %54 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 2
  %55 = getelementptr inbounds [3 x float], [3 x float]* %54, i64 0, i64 0
  store float %53, float* %55, align 8
  %56 = load float*, float** %16, align 8
  %57 = getelementptr inbounds float, float* %56, i64 0
  %58 = load float, float* %57, align 4
  %59 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %60 = getelementptr inbounds [3 x float], [3 x float]* %59, i64 0, i64 1
  store float %58, float* %60, align 4
  %61 = load float*, float** %16, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  %64 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 1
  %65 = getelementptr inbounds [3 x float], [3 x float]* %64, i64 0, i64 1
  store float %63, float* %65, align 4
  %66 = load float*, float** %16, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 2
  %70 = getelementptr inbounds [3 x float], [3 x float]* %69, i64 0, i64 1
  store float %68, float* %70, align 4
  %71 = load float*, float** %17, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %75 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0, i64 2
  store float %73, float* %75, align 8
  %76 = load float*, float** %17, align 8
  %77 = getelementptr inbounds float, float* %76, i64 1
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 1
  %80 = getelementptr inbounds [3 x float], [3 x float]* %79, i64 0, i64 2
  store float %78, float* %80, align 4
  %81 = load float*, float** %17, align 8
  %82 = getelementptr inbounds float, float* %81, i64 2
  %83 = load float, float* %82, align 4
  %84 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 2
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 2
  store float %83, float* %85, align 8
  %86 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %87 = bitcast [3 x float]* %86 to float**
  %88 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %89 = bitcast [3 x float]* %88 to float**
  %90 = call i32 @memcpy(float** %87, float** %89, i32 36)
  %91 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 1
  %92 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 0, i64 0
  %93 = load float, float* %92, align 4
  %94 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [3 x float], [3 x float]* %94, i64 0, i64 1
  store float %93, float* %95, align 4
  %96 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 2
  %97 = getelementptr inbounds [3 x float], [3 x float]* %96, i64 0, i64 0
  %98 = load float, float* %97, align 8
  %99 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %100 = getelementptr inbounds [3 x float], [3 x float]* %99, i64 0, i64 2
  store float %98, float* %100, align 8
  %101 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %102 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 0, i64 1
  %103 = load float, float* %102, align 4
  %104 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 1
  %105 = getelementptr inbounds [3 x float], [3 x float]* %104, i64 0, i64 0
  store float %103, float* %105, align 4
  %106 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 2
  %107 = getelementptr inbounds [3 x float], [3 x float]* %106, i64 0, i64 1
  %108 = load float, float* %107, align 4
  %109 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 1
  %110 = getelementptr inbounds [3 x float], [3 x float]* %109, i64 0, i64 2
  store float %108, float* %110, align 4
  %111 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %112 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 0, i64 2
  %113 = load float, float* %112, align 8
  %114 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 2
  %115 = getelementptr inbounds [3 x float], [3 x float]* %114, i64 0, i64 0
  store float %113, float* %115, align 8
  %116 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 1
  %117 = getelementptr inbounds [3 x float], [3 x float]* %116, i64 0, i64 2
  %118 = load float, float* %117, align 4
  %119 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 2
  %120 = getelementptr inbounds [3 x float], [3 x float]* %119, i64 0, i64 1
  store float %118, float* %120, align 4
  %121 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %122 = bitcast [3 x float]* %121 to float**
  %123 = call i32 @memset(float** %122, i32 0, i32 36)
  %124 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 2
  %125 = getelementptr inbounds [3 x float], [3 x float]* %124, i64 0, i64 2
  store float 1.000000e+00, float* %125, align 8
  %126 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 1
  %127 = getelementptr inbounds [3 x float], [3 x float]* %126, i64 0, i64 1
  store float 1.000000e+00, float* %127, align 4
  %128 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %129 = getelementptr inbounds [3 x float], [3 x float]* %128, i64 0, i64 0
  store float 1.000000e+00, float* %129, align 16
  %130 = load float, float* %8, align 4
  %131 = call float @DEG2RAD(float %130)
  store float %131, float* %18, align 4
  %132 = load float, float* %18, align 4
  %133 = call i64 @cos(float %132)
  %134 = sitofp i64 %133 to float
  %135 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %136 = getelementptr inbounds [3 x float], [3 x float]* %135, i64 0, i64 0
  store float %134, float* %136, align 16
  %137 = load float, float* %18, align 4
  %138 = call i64 @sin(float %137)
  %139 = sitofp i64 %138 to float
  %140 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %141 = getelementptr inbounds [3 x float], [3 x float]* %140, i64 0, i64 1
  store float %139, float* %141, align 4
  %142 = load float, float* %18, align 4
  %143 = call i64 @sin(float %142)
  %144 = sub nsw i64 0, %143
  %145 = sitofp i64 %144 to float
  %146 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 1
  %147 = getelementptr inbounds [3 x float], [3 x float]* %146, i64 0, i64 0
  store float %145, float* %147, align 4
  %148 = load float, float* %18, align 4
  %149 = call i64 @cos(float %148)
  %150 = sitofp i64 %149 to float
  %151 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 1
  %152 = getelementptr inbounds [3 x float], [3 x float]* %151, i64 0, i64 1
  store float %150, float* %152, align 4
  %153 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %154 = bitcast [3 x float]* %153 to float**
  %155 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %156 = bitcast [3 x float]* %155 to float**
  %157 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %12, i64 0, i64 0
  %158 = bitcast [3 x float]* %157 to float**
  %159 = call i32 @MatrixMultiply(float** %154, float** %156, float** %158)
  %160 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %12, i64 0, i64 0
  %161 = bitcast [3 x float]* %160 to float**
  %162 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %163 = bitcast [3 x float]* %162 to float**
  %164 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 0
  %165 = bitcast [3 x float]* %164 to float**
  %166 = call i32 @MatrixMultiply(float** %161, float** %163, float** %165)
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %204, %4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %207

170:                                              ; preds = %167
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %172
  %174 = getelementptr inbounds [3 x float], [3 x float]* %173, i64 0, i64 0
  %175 = load float, float* %174, align 4
  %176 = load float*, float** %7, align 8
  %177 = getelementptr inbounds float, float* %176, i64 0
  %178 = load float, float* %177, align 4
  %179 = fmul float %175, %178
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %181
  %183 = getelementptr inbounds [3 x float], [3 x float]* %182, i64 0, i64 1
  %184 = load float, float* %183, align 4
  %185 = load float*, float** %7, align 8
  %186 = getelementptr inbounds float, float* %185, i64 1
  %187 = load float, float* %186, align 4
  %188 = fmul float %184, %187
  %189 = fadd float %179, %188
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %191
  %193 = getelementptr inbounds [3 x float], [3 x float]* %192, i64 0, i64 2
  %194 = load float, float* %193, align 4
  %195 = load float*, float** %7, align 8
  %196 = getelementptr inbounds float, float* %195, i64 2
  %197 = load float, float* %196, align 4
  %198 = fmul float %194, %197
  %199 = fadd float %189, %198
  %200 = load float*, float** %5, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %200, i64 %202
  store float %199, float* %203, align 4
  br label %204

204:                                              ; preds = %170
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %167

207:                                              ; preds = %167
  ret void
}

declare dso_local i32 @PerpendicularVector(float*, float*) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local i32 @memcpy(float**, float**, i32) #1

declare dso_local i32 @memset(float**, i32, i32) #1

declare dso_local float @DEG2RAD(float) #1

declare dso_local i64 @cos(float) #1

declare dso_local i64 @sin(float) #1

declare dso_local i32 @MatrixMultiply(float**, float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
