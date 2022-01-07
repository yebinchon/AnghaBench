; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_R_InitSkyTexCoords.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_R_InitSkyTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@backEnd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SKY_SUBDIVISIONS = common dso_local global i32 0, align 4
@HALF_SKY_SUBDIVISIONS = common dso_local global i32 0, align 4
@s_cloudTexP = common dso_local global float*** null, align 8
@s_cloudTexCoords = common dso_local global float**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitSkyTexCoords(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store float %0, float* %2, align 4
  store float 4.096000e+03, float* %6, align 4
  store i32 1024, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backEnd, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %211, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %214

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %207, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SKY_SUBDIVISIONS, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %210

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %203, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SKY_SUBDIVISIONS, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %206

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sitofp i32 %28 to float
  %30 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %29, %31
  %33 = fptosi float %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  %38 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %37, %39
  %41 = fptosi float %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @MakeSkyVec(i32 %33, i32 %41, i32 %42, i32* null, i32* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @DotProduct(i32* %45, i32* %46)
  %48 = mul nsw i32 2, %47
  %49 = sitofp i32 %48 to float
  %50 = fdiv float 1.000000e+00, %49
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 -2, %53
  %55 = sitofp i32 %54 to float
  %56 = load float, float* %6, align 4
  %57 = fmul float %55, %56
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = sitofp i32 %60 to float
  %62 = call i32 @SQR(float %61)
  %63 = load float, float* %6, align 4
  %64 = call i32 @SQR(float %63)
  %65 = mul nsw i32 %62, %64
  %66 = sitofp i32 %65 to float
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sitofp i32 %69 to float
  %71 = call i32 @SQR(float %70)
  %72 = mul nsw i32 2, %71
  %73 = sitofp i32 %72 to float
  %74 = load float, float* %6, align 4
  %75 = fmul float %73, %74
  %76 = load float, float* %2, align 4
  %77 = fmul float %75, %76
  %78 = fadd float %66, %77
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to float
  %83 = call i32 @SQR(float %82)
  %84 = load float, float* %2, align 4
  %85 = call i32 @SQR(float %84)
  %86 = mul nsw i32 %83, %85
  %87 = sitofp i32 %86 to float
  %88 = fadd float %78, %87
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = sitofp i32 %91 to float
  %93 = call i32 @SQR(float %92)
  %94 = mul nsw i32 2, %93
  %95 = sitofp i32 %94 to float
  %96 = load float, float* %6, align 4
  %97 = fmul float %95, %96
  %98 = load float, float* %2, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %88, %99
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = call i32 @SQR(float %104)
  %106 = load float, float* %2, align 4
  %107 = call i32 @SQR(float %106)
  %108 = mul nsw i32 %105, %107
  %109 = sitofp i32 %108 to float
  %110 = fadd float %100, %109
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to float
  %115 = call i32 @SQR(float %114)
  %116 = mul nsw i32 2, %115
  %117 = sitofp i32 %116 to float
  %118 = load float, float* %6, align 4
  %119 = fmul float %117, %118
  %120 = load float, float* %2, align 4
  %121 = fmul float %119, %120
  %122 = fadd float %110, %121
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to float
  %127 = call i32 @SQR(float %126)
  %128 = load float, float* %2, align 4
  %129 = call i32 @SQR(float %128)
  %130 = mul nsw i32 %127, %129
  %131 = sitofp i32 %130 to float
  %132 = fadd float %122, %131
  %133 = fptosi float %132 to i32
  %134 = call i32 @sqrt(i32 %133)
  %135 = mul nsw i32 2, %134
  %136 = sitofp i32 %135 to float
  %137 = fadd float %57, %136
  %138 = fmul float %50, %137
  store float %138, float* %7, align 4
  %139 = load float, float* %7, align 4
  %140 = load float***, float**** @s_cloudTexP, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float**, float*** %140, i64 %142
  %144 = load float**, float*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float*, float** %144, i64 %146
  %148 = load float*, float** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  store float %139, float* %151, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = load float, float* %7, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @VectorScale(i32* %152, float %153, i32* %154)
  %156 = load float, float* %6, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = sitofp i32 %159 to float
  %161 = fadd float %160, %156
  %162 = fptosi float %161 to i32
  store i32 %162, i32* %158, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @VectorNormalize(i32* %163)
  %165 = load i32*, i32** %11, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call float @Q_acos(i32 %167)
  store float %168, float* %8, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call float @Q_acos(i32 %171)
  store float %172, float* %9, align 4
  %173 = load float, float* %8, align 4
  %174 = load float****, float***** @s_cloudTexCoords, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float***, float**** %174, i64 %176
  %178 = load float***, float**** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float**, float*** %178, i64 %180
  %182 = load float**, float*** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 0
  store float %173, float* %187, align 4
  %188 = load float, float* %9, align 4
  %189 = load float****, float***** @s_cloudTexCoords, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float***, float**** %189, i64 %191
  %193 = load float***, float**** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float**, float*** %193, i64 %195
  %197 = load float**, float*** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float*, float** %197, i64 %199
  %201 = load float*, float** %200, align 8
  %202 = getelementptr inbounds float, float* %201, i64 1
  store float %188, float* %202, align 4
  br label %203

203:                                              ; preds = %25
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %21

206:                                              ; preds = %21
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %16

210:                                              ; preds = %16
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %12

214:                                              ; preds = %12
  ret void
}

declare dso_local i32 @MakeSkyVec(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @SQR(float) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local float @Q_acos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
