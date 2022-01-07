; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_RotatePointAroundVector.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_RotatePointAroundVector.c"
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
  %133 = call float @cos(float %132)
  %134 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %135 = getelementptr inbounds [3 x float], [3 x float]* %134, i64 0, i64 0
  store float %133, float* %135, align 16
  %136 = load float, float* %18, align 4
  %137 = call float @sin(float %136)
  %138 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %139 = getelementptr inbounds [3 x float], [3 x float]* %138, i64 0, i64 1
  store float %137, float* %139, align 4
  %140 = load float, float* %18, align 4
  %141 = call float @sin(float %140)
  %142 = fneg float %141
  %143 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 1
  %144 = getelementptr inbounds [3 x float], [3 x float]* %143, i64 0, i64 0
  store float %142, float* %144, align 4
  %145 = load float, float* %18, align 4
  %146 = call float @cos(float %145)
  %147 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 1
  %148 = getelementptr inbounds [3 x float], [3 x float]* %147, i64 0, i64 1
  store float %146, float* %148, align 4
  %149 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %150 = bitcast [3 x float]* %149 to float**
  %151 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %152 = bitcast [3 x float]* %151 to float**
  %153 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %12, i64 0, i64 0
  %154 = bitcast [3 x float]* %153 to float**
  %155 = call i32 @MatrixMultiply(float** %150, float** %152, float** %154)
  %156 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %12, i64 0, i64 0
  %157 = bitcast [3 x float]* %156 to float**
  %158 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %159 = bitcast [3 x float]* %158 to float**
  %160 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 0
  %161 = bitcast [3 x float]* %160 to float**
  %162 = call i32 @MatrixMultiply(float** %157, float** %159, float** %161)
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %200, %4
  %164 = load i32, i32* %14, align 4
  %165 = icmp slt i32 %164, 3
  br i1 %165, label %166, label %203

166:                                              ; preds = %163
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %168
  %170 = getelementptr inbounds [3 x float], [3 x float]* %169, i64 0, i64 0
  %171 = load float, float* %170, align 4
  %172 = load float*, float** %7, align 8
  %173 = getelementptr inbounds float, float* %172, i64 0
  %174 = load float, float* %173, align 4
  %175 = fmul float %171, %174
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %177
  %179 = getelementptr inbounds [3 x float], [3 x float]* %178, i64 0, i64 1
  %180 = load float, float* %179, align 4
  %181 = load float*, float** %7, align 8
  %182 = getelementptr inbounds float, float* %181, i64 1
  %183 = load float, float* %182, align 4
  %184 = fmul float %180, %183
  %185 = fadd float %175, %184
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %13, i64 0, i64 %187
  %189 = getelementptr inbounds [3 x float], [3 x float]* %188, i64 0, i64 2
  %190 = load float, float* %189, align 4
  %191 = load float*, float** %7, align 8
  %192 = getelementptr inbounds float, float* %191, i64 2
  %193 = load float, float* %192, align 4
  %194 = fmul float %190, %193
  %195 = fadd float %185, %194
  %196 = load float*, float** %5, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  store float %195, float* %199, align 4
  br label %200

200:                                              ; preds = %166
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %163

203:                                              ; preds = %163
  ret void
}

declare dso_local i32 @PerpendicularVector(float*, float*) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local i32 @memcpy(float**, float**, i32) #1

declare dso_local i32 @memset(float**, i32, i32) #1

declare dso_local float @DEG2RAD(float) #1

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

declare dso_local i32 @MatrixMultiply(float**, float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
