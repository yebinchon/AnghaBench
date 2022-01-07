; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_math.c_AngleVectors.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_math.c_AngleVectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AngleVectors.sr = internal global float 0.000000e+00, align 4
@AngleVectors.sp = internal global float 0.000000e+00, align 4
@AngleVectors.sy = internal global float 0.000000e+00, align 4
@AngleVectors.cr = internal global float 0.000000e+00, align 4
@AngleVectors.cp = internal global float 0.000000e+00, align 4
@AngleVectors.cy = internal global float 0.000000e+00, align 4
@YAW = common dso_local global i64 0, align 8
@M_PI = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AngleVectors(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* @YAW, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @M_PI, align 4
  %15 = mul nsw i32 %14, 2
  %16 = sdiv i32 %15, 360
  %17 = mul nsw i32 %13, %16
  %18 = sitofp i32 %17 to float
  store float %18, float* %9, align 4
  %19 = load float, float* %9, align 4
  %20 = call float @sin(float %19)
  store float %20, float* @AngleVectors.sy, align 4
  %21 = load float, float* %9, align 4
  %22 = call float @cos(float %21)
  store float %22, float* @AngleVectors.cy, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* @PITCH, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @M_PI, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sdiv i32 %28, 360
  %30 = mul nsw i32 %26, %29
  %31 = sitofp i32 %30 to float
  store float %31, float* %9, align 4
  %32 = load float, float* %9, align 4
  %33 = call float @sin(float %32)
  store float %33, float* @AngleVectors.sp, align 4
  %34 = load float, float* %9, align 4
  %35 = call float @cos(float %34)
  store float %35, float* @AngleVectors.cp, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* @ROLL, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_PI, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sdiv i32 %41, 360
  %43 = mul nsw i32 %39, %42
  %44 = sitofp i32 %43 to float
  store float %44, float* %9, align 4
  %45 = load float, float* %9, align 4
  %46 = call float @sin(float %45)
  store float %46, float* @AngleVectors.sr, align 4
  %47 = load float, float* %9, align 4
  %48 = call float @cos(float %47)
  store float %48, float* @AngleVectors.cr, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %4
  %52 = load float, float* @AngleVectors.cp, align 4
  %53 = load float, float* @AngleVectors.cy, align 4
  %54 = fmul float %52, %53
  %55 = fptosi float %54 to i32
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load float, float* @AngleVectors.cp, align 4
  %59 = load float, float* @AngleVectors.sy, align 4
  %60 = fmul float %58, %59
  %61 = fptosi float %60 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load float, float* @AngleVectors.sp, align 4
  %65 = fneg float %64
  %66 = fptosi float %65 to i32
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %51, %4
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %69
  %73 = load float, float* @AngleVectors.sr, align 4
  %74 = fmul float -1.000000e+00, %73
  %75 = load float, float* @AngleVectors.sp, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* @AngleVectors.cy, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* @AngleVectors.cr, align 4
  %80 = fmul float -1.000000e+00, %79
  %81 = load float, float* @AngleVectors.sy, align 4
  %82 = fneg float %81
  %83 = fmul float %80, %82
  %84 = fadd float %78, %83
  %85 = fptosi float %84 to i32
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load float, float* @AngleVectors.sr, align 4
  %89 = fmul float -1.000000e+00, %88
  %90 = load float, float* @AngleVectors.sp, align 4
  %91 = fmul float %89, %90
  %92 = load float, float* @AngleVectors.sy, align 4
  %93 = fmul float %91, %92
  %94 = load float, float* @AngleVectors.cr, align 4
  %95 = fmul float -1.000000e+00, %94
  %96 = load float, float* @AngleVectors.cy, align 4
  %97 = fmul float %95, %96
  %98 = fadd float %93, %97
  %99 = fptosi float %98 to i32
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %99, i32* %101, align 4
  %102 = load float, float* @AngleVectors.sr, align 4
  %103 = fmul float -1.000000e+00, %102
  %104 = load float, float* @AngleVectors.cp, align 4
  %105 = fmul float %103, %104
  %106 = fptosi float %105 to i32
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %72, %69
  %110 = load i32*, i32** %8, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %146

112:                                              ; preds = %109
  %113 = load float, float* @AngleVectors.cr, align 4
  %114 = load float, float* @AngleVectors.sp, align 4
  %115 = fmul float %113, %114
  %116 = load float, float* @AngleVectors.cy, align 4
  %117 = fmul float %115, %116
  %118 = load float, float* @AngleVectors.sr, align 4
  %119 = fneg float %118
  %120 = load float, float* @AngleVectors.sy, align 4
  %121 = fneg float %120
  %122 = fmul float %119, %121
  %123 = fadd float %117, %122
  %124 = fptosi float %123 to i32
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load float, float* @AngleVectors.cr, align 4
  %128 = load float, float* @AngleVectors.sp, align 4
  %129 = fmul float %127, %128
  %130 = load float, float* @AngleVectors.sy, align 4
  %131 = fmul float %129, %130
  %132 = load float, float* @AngleVectors.sr, align 4
  %133 = fneg float %132
  %134 = load float, float* @AngleVectors.cy, align 4
  %135 = fmul float %133, %134
  %136 = fadd float %131, %135
  %137 = fptosi float %136 to i32
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %137, i32* %139, align 4
  %140 = load float, float* @AngleVectors.cr, align 4
  %141 = load float, float* @AngleVectors.cp, align 4
  %142 = fmul float %140, %141
  %143 = fptosi float %142 to i32
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %112, %109
  ret void
}

declare dso_local float @sin(float) #1

declare dso_local float @cos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
