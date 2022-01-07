; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_DeformText.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_DeformText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float**, i64, i64, i64, i32* }

@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeformText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = load float*, float** %6, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  store float 0.000000e+00, float* %22, align 4
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float -1.000000e+00, float* %24, align 4
  %25 = load float*, float** %13, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 4), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @R_VaoUnpackNormal(float* %25, i32 %28)
  %30 = load float*, float** %13, align 8
  %31 = load float*, float** %6, align 8
  %32 = load float*, float** %5, align 8
  %33 = call i32 @CrossProduct(float* %30, float* %31, float* %32)
  %34 = load float*, float** %12, align 8
  %35 = call i32 @VectorClear(float* %34)
  store float 9.999990e+05, float* %10, align 4
  store float -9.999990e+05, float* %11, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %84, %1
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  %40 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float*, float** %40, i64 %42
  %44 = load float*, float** %43, align 8
  %45 = load float*, float** %12, align 8
  %46 = load float*, float** %12, align 8
  %47 = call i32 @VectorAdd(float* %44, float* %45, float* %46)
  %48 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float*, float** %48, i64 %50
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = load float, float* %10, align 4
  %56 = fcmp olt float %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %39
  %58 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  store float %64, float* %10, align 4
  br label %65

65:                                               ; preds = %57, %39
  %66 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float*, float** %66, i64 %68
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = load float, float* %11, align 4
  %74 = fcmp ogt float %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float*, float** %76, i64 %78
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 2
  %82 = load float, float* %81, align 4
  store float %82, float* %11, align 4
  br label %83

83:                                               ; preds = %75, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %36

87:                                               ; preds = %36
  %88 = load float*, float** %12, align 8
  %89 = load float*, float** %4, align 8
  %90 = call i32 @VectorScale(float* %88, float 2.500000e-01, float* %89)
  %91 = load float*, float** %6, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  store float 0.000000e+00, float* %92, align 4
  %93 = load float*, float** %6, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  store float 0.000000e+00, float* %94, align 4
  %95 = load float, float* %11, align 4
  %96 = load float, float* %10, align 4
  %97 = fsub float %95, %96
  %98 = fmul float %97, 5.000000e-01
  %99 = load float*, float** %6, align 8
  %100 = getelementptr inbounds float, float* %99, i64 2
  store float %98, float* %100, align 4
  %101 = load float*, float** %5, align 8
  %102 = load float*, float** %6, align 8
  %103 = getelementptr inbounds float, float* %102, i64 2
  %104 = load float, float* %103, align 4
  %105 = fmul float %104, -7.500000e-01
  %106 = load float*, float** %5, align 8
  %107 = call i32 @VectorScale(float* %101, float %105, float* %106)
  %108 = load i8*, i8** %2, align 8
  %109 = call i32 @strlen(i8* %108)
  store i32 %109, i32* %7, align 4
  %110 = load float*, float** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load float*, float** %5, align 8
  %114 = load float*, float** %4, align 8
  %115 = call i32 @VectorMA(float* %110, i32 %112, float* %113, float* %114)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %116 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float 1.000000e+00, float* %116, align 4
  %117 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float 1.000000e+00, float* %117, align 8
  %118 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float 1.000000e+00, float* %118, align 4
  %119 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float 1.000000e+00, float* %119, align 16
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %164, %87
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %167

124:                                              ; preds = %120
  %125 = load i8*, i8** %2, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, 255
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 32
  br i1 %134, label %135, label %159

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 4
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 15
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sitofp i32 %140 to float
  %142 = fmul float %141, 6.250000e-02
  store float %142, float* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sitofp i32 %143 to float
  %145 = fmul float %144, 6.250000e-02
  store float %145, float* %17, align 4
  store float 6.250000e-02, float* %18, align 4
  %146 = load float*, float** %4, align 8
  %147 = load float*, float** %5, align 8
  %148 = load float*, float** %6, align 8
  %149 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %150 = load float, float* %17, align 4
  %151 = load float, float* %16, align 4
  %152 = load float, float* %17, align 4
  %153 = load float, float* %18, align 4
  %154 = fadd float %152, %153
  %155 = load float, float* %16, align 4
  %156 = load float, float* %18, align 4
  %157 = fadd float %155, %156
  %158 = call i32 @RB_AddQuadStampExt(float* %146, float* %147, float* %148, float* %149, float %150, float %151, float %154, float %157)
  br label %159

159:                                              ; preds = %135, %124
  %160 = load float*, float** %4, align 8
  %161 = load float*, float** %5, align 8
  %162 = load float*, float** %4, align 8
  %163 = call i32 @VectorMA(float* %160, i32 -2, float* %161, float* %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %120

167:                                              ; preds = %120
  ret void
}

declare dso_local i32 @R_VaoUnpackNormal(float*, i32) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @VectorMA(float*, i32, float*, float*) #1

declare dso_local i32 @RB_AddQuadStampExt(float*, float*, float*, float*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
