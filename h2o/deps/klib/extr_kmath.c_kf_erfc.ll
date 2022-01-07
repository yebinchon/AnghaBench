; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_erfc.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_erfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SQRT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kf_erfc(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %3, align 8
  store double 0x406B869EA974C7E9, double* %4, align 8
  store double 0x406BA6D5C7A28CF5, double* %5, align 8
  store double 0x405C05131CA58D35, double* %6, align 8
  store double 0x4040F4D8CBB02431, double* %7, align 8
  store double 0x40197EEFF2A86F23, double* %8, align 8
  store double 0x3FE66989BE8EA720, double* %9, align 8
  store double 0x3FA20DED0B57FBDD, double* %10, align 8
  store double 0x407B869EA974C7E9, double* %11, align 8
  store double 0x4088CE9CB298974E, double* %12, align 8
  store double 0x4083EAAB47FA1778, double* %13, align 8
  store double 0x4072890729BA781A, double* %14, align 8
  store double 0x4055B1F78433A599, double* %15, align 8
  store double 0x4030106DF11BD48F, double* %16, align 8
  store double 0x3FFC173673887D1A, double* %17, align 8
  store double 0x3FB6A09E667F3BCD, double* %18, align 8
  %22 = load double, double* %3, align 8
  %23 = call i32 @fabs(double %22)
  %24 = load i32, i32* @M_SQRT2, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sitofp i32 %25 to double
  store double %26, double* %20, align 8
  %27 = load double, double* %20, align 8
  %28 = fcmp ogt double %27, 3.700000e+01
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load double, double* %3, align 8
  %31 = fcmp ogt double %30, 0.000000e+00
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, double 0.000000e+00, double 2.000000e+00
  store double %33, double* %2, align 8
  br label %118

34:                                               ; preds = %1
  %35 = load double, double* %20, align 8
  %36 = load double, double* %20, align 8
  %37 = fmul double %35, %36
  %38 = fmul double %37, -5.000000e-01
  %39 = call double @exp(double %38) #3
  store double %39, double* %19, align 8
  %40 = load double, double* %20, align 8
  %41 = load i32, i32* @M_SQRT2, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double 1.000000e+01, %42
  %44 = fcmp olt double %40, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %34
  %46 = load double, double* %19, align 8
  %47 = load double, double* %20, align 8
  %48 = fmul double 0x3FA20DED0B57FBDD, %47
  %49 = fadd double %48, 0x3FE66989BE8EA720
  %50 = load double, double* %20, align 8
  %51 = fmul double %49, %50
  %52 = fadd double %51, 0x40197EEFF2A86F23
  %53 = load double, double* %20, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %54, 0x4040F4D8CBB02431
  %56 = load double, double* %20, align 8
  %57 = fmul double %55, %56
  %58 = fadd double %57, 0x405C05131CA58D35
  %59 = load double, double* %20, align 8
  %60 = fmul double %58, %59
  %61 = fadd double %60, 0x406BA6D5C7A28CF5
  %62 = load double, double* %20, align 8
  %63 = fmul double %61, %62
  %64 = fadd double %63, 0x406B869EA974C7E9
  %65 = fmul double %46, %64
  %66 = load double, double* %20, align 8
  %67 = fmul double 0x3FB6A09E667F3BCD, %66
  %68 = fadd double %67, 0x3FFC173673887D1A
  %69 = load double, double* %20, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %70, 0x4030106DF11BD48F
  %72 = load double, double* %20, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %73, 0x4055B1F78433A599
  %75 = load double, double* %20, align 8
  %76 = fmul double %74, %75
  %77 = fadd double %76, 0x4072890729BA781A
  %78 = load double, double* %20, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %79, 0x4083EAAB47FA1778
  %81 = load double, double* %20, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %82, 0x4088CE9CB298974E
  %84 = load double, double* %20, align 8
  %85 = fmul double %83, %84
  %86 = fadd double %85, 0x407B869EA974C7E9
  %87 = fdiv double %65, %86
  store double %87, double* %21, align 8
  br label %106

88:                                               ; preds = %34
  %89 = load double, double* %19, align 8
  %90 = fdiv double %89, 0x40040D931FF62707
  %91 = load double, double* %20, align 8
  %92 = load double, double* %20, align 8
  %93 = load double, double* %20, align 8
  %94 = load double, double* %20, align 8
  %95 = load double, double* %20, align 8
  %96 = fadd double %95, 6.500000e-01
  %97 = fdiv double 4.000000e+00, %96
  %98 = fadd double %94, %97
  %99 = fdiv double 3.000000e+00, %98
  %100 = fadd double %93, %99
  %101 = fdiv double 2.000000e+00, %100
  %102 = fadd double %92, %101
  %103 = fdiv double 1.000000e+00, %102
  %104 = fadd double %91, %103
  %105 = fdiv double %90, %104
  store double %105, double* %21, align 8
  br label %106

106:                                              ; preds = %88, %45
  %107 = load double, double* %3, align 8
  %108 = fcmp ogt double %107, 0.000000e+00
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load double, double* %21, align 8
  %111 = fmul double 2.000000e+00, %110
  br label %116

112:                                              ; preds = %106
  %113 = load double, double* %21, align 8
  %114 = fsub double 1.000000e+00, %113
  %115 = fmul double 2.000000e+00, %114
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi double [ %111, %109 ], [ %115, %112 ]
  store double %117, double* %2, align 8
  br label %118

118:                                              ; preds = %116, %29
  %119 = load double, double* %2, align 8
  ret double %119
}

declare dso_local i32 @fabs(double) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
