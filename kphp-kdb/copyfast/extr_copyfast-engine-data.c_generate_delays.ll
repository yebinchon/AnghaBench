; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_generate_delays.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_generate_delays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOW_REQUEST_DELAY = common dso_local global double 0.000000e+00, align 8
@REQUEST_DELAY = common dso_local global double* null, align 8
@MEDIUM_REQUEST_DELAY = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_delays() #0 {
  %1 = alloca double, align 8
  %2 = call double (...) @drand48()
  store double %2, double* %1, align 8
  %3 = load double, double* %1, align 8
  %4 = fcmp olt double %3, 1.000000e-01
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store double 1.000000e-01, double* %1, align 8
  br label %6

6:                                                ; preds = %5, %0
  %7 = load double, double* %1, align 8
  %8 = call double @log(double %7) #3
  %9 = fneg double %8
  store double %9, double* %1, align 8
  %10 = load double, double* %1, align 8
  %11 = fcmp oge double %10, 0.000000e+00
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load double, double* @SLOW_REQUEST_DELAY, align 8
  %15 = load double, double* %1, align 8
  %16 = fmul double %14, %15
  %17 = load double*, double** @REQUEST_DELAY, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  store double %16, double* %18, align 8
  %19 = load double, double* @MEDIUM_REQUEST_DELAY, align 8
  %20 = load double, double* %1, align 8
  %21 = fmul double %19, %20
  %22 = load double*, double** @REQUEST_DELAY, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  store double %21, double* %23, align 8
  %24 = load double*, double** @REQUEST_DELAY, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  store double -1.000000e-01, double* %25, align 8
  ret void
}

declare dso_local double @drand48(...) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
