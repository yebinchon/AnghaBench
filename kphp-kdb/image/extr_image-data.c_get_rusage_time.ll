; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_rusage_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_rusage_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_rusage_time(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rusage, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @getrusage(i32 %6, %struct.rusage* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %36

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to double
  %15 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fadd double %14, %18
  %20 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = fadd double %23, %27
  %29 = fmul double 0x3EB0C6F7A0B5ED8D, %28
  %30 = fadd double %19, %29
  store double %30, double* %5, align 8
  %31 = load double, double* %5, align 8
  %32 = fcmp ogt double %31, 1.000000e+09
  br i1 %32, label %33, label %34

33:                                               ; preds = %10
  store double 0.000000e+00, double* %2, align 8
  br label %36

34:                                               ; preds = %10
  %35 = load double, double* %5, align 8
  store double %35, double* %2, align 8
  br label %36

36:                                               ; preds = %34, %33, %9
  %37 = load double, double* %2, align 8
  ret double %37
}

declare dso_local i64 @getrusage(i32, %struct.rusage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
