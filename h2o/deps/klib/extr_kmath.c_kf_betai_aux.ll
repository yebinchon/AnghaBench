; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_betai_aux.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_betai_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KF_TINY = common dso_local global double 0.000000e+00, align 8
@KF_GAMMA_EPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @kf_betai_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @kf_betai_aux(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %15 = load double, double* %7, align 8
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %155

18:                                               ; preds = %3
  %19 = load double, double* %7, align 8
  %20 = fcmp oeq double %19, 1.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store double 1.000000e+00, double* %4, align 8
  br label %155

22:                                               ; preds = %18
  store double 1.000000e+00, double* %10, align 8
  %23 = load double, double* %10, align 8
  store double %23, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %121, %22
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 200
  br i1 %26, label %27, label %124

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load double, double* %5, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sitofp i32 %35 to double
  %37 = fadd double %34, %36
  %38 = fneg double %37
  %39 = load double, double* %5, align 8
  %40 = load double, double* %6, align 8
  %41 = fadd double %39, %40
  %42 = load i32, i32* %14, align 4
  %43 = sitofp i32 %42 to double
  %44 = fadd double %41, %43
  %45 = fmul double %38, %44
  %46 = load double, double* %7, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %5, align 8
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 2, %49
  %51 = sitofp i32 %50 to double
  %52 = fadd double %48, %51
  %53 = load double, double* %5, align 8
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 2, %54
  %56 = sitofp i32 %55 to double
  %57 = fadd double %53, %56
  %58 = fadd double %57, 1.000000e+00
  %59 = fmul double %52, %58
  %60 = fdiv double %47, %59
  br label %84

61:                                               ; preds = %27
  %62 = load i32, i32* %14, align 4
  %63 = sitofp i32 %62 to double
  %64 = load double, double* %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sitofp i32 %65 to double
  %67 = fsub double %64, %66
  %68 = fmul double %63, %67
  %69 = load double, double* %7, align 8
  %70 = fmul double %68, %69
  %71 = load double, double* %5, align 8
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 2, %72
  %74 = sitofp i32 %73 to double
  %75 = fadd double %71, %74
  %76 = fsub double %75, 1.000000e+00
  %77 = load double, double* %5, align 8
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 2, %78
  %80 = sitofp i32 %79 to double
  %81 = fadd double %77, %80
  %82 = fmul double %76, %81
  %83 = fdiv double %70, %82
  br label %84

84:                                               ; preds = %61, %33
  %85 = phi double [ %60, %33 ], [ %83, %61 ]
  store double %85, double* %12, align 8
  %86 = load double, double* %12, align 8
  %87 = load double, double* %9, align 8
  %88 = fmul double %86, %87
  %89 = fadd double 1.000000e+00, %88
  store double %89, double* %9, align 8
  %90 = load double, double* %9, align 8
  %91 = load double, double* @KF_TINY, align 8
  %92 = fcmp olt double %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load double, double* @KF_TINY, align 8
  store double %94, double* %9, align 8
  br label %95

95:                                               ; preds = %93, %84
  %96 = load double, double* %12, align 8
  %97 = load double, double* %8, align 8
  %98 = fdiv double %96, %97
  %99 = fadd double 1.000000e+00, %98
  store double %99, double* %8, align 8
  %100 = load double, double* %8, align 8
  %101 = load double, double* @KF_TINY, align 8
  %102 = fcmp olt double %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load double, double* @KF_TINY, align 8
  store double %104, double* %8, align 8
  br label %105

105:                                              ; preds = %103, %95
  %106 = load double, double* %9, align 8
  %107 = fdiv double 1.000000e+00, %106
  store double %107, double* %9, align 8
  %108 = load double, double* %8, align 8
  %109 = load double, double* %9, align 8
  %110 = fmul double %108, %109
  store double %110, double* %13, align 8
  %111 = load double, double* %13, align 8
  %112 = load double, double* %10, align 8
  %113 = fmul double %112, %111
  store double %113, double* %10, align 8
  %114 = load double, double* %13, align 8
  %115 = fsub double %114, 1.000000e+00
  %116 = call i64 @fabs(double %115)
  %117 = load i64, i64* @KF_GAMMA_EPS, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %124

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %24

124:                                              ; preds = %119, %24
  %125 = load double, double* %5, align 8
  %126 = load double, double* %6, align 8
  %127 = fadd double %125, %126
  %128 = call i64 @kf_lgamma(double %127)
  %129 = load double, double* %5, align 8
  %130 = call i64 @kf_lgamma(double %129)
  %131 = sub nsw i64 %128, %130
  %132 = load double, double* %6, align 8
  %133 = call i64 @kf_lgamma(double %132)
  %134 = sub nsw i64 %131, %133
  %135 = sitofp i64 %134 to double
  %136 = load double, double* %5, align 8
  %137 = load double, double* %7, align 8
  %138 = fptosi double %137 to i32
  %139 = call double @log(i32 %138)
  %140 = fmul double %136, %139
  %141 = fadd double %135, %140
  %142 = load double, double* %6, align 8
  %143 = load double, double* %7, align 8
  %144 = fsub double 1.000000e+00, %143
  %145 = fptosi double %144 to i32
  %146 = call double @log(i32 %145)
  %147 = fmul double %142, %146
  %148 = fadd double %141, %147
  %149 = fptosi double %148 to i64
  %150 = call double @exp(i64 %149)
  %151 = load double, double* %5, align 8
  %152 = fdiv double %150, %151
  %153 = load double, double* %10, align 8
  %154 = fdiv double %152, %153
  store double %154, double* %4, align 8
  br label %155

155:                                              ; preds = %124, %21, %17
  %156 = load double, double* %4, align 8
  ret double %156
}

declare dso_local i64 @fabs(double) #1

declare dso_local double @exp(i64) #1

declare dso_local i64 @kf_lgamma(double) #1

declare dso_local double @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
