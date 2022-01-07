; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_stats_perf.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_stats_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amortization_counter_precise = type { double }

@stats_counters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%c%.6lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_stats_perf(i8* %0, i32 %1, %struct.amortization_counter_precise* %2, %struct.amortization_counter_precise* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amortization_counter_precise*, align 8
  %8 = alloca %struct.amortization_counter_precise*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amortization_counter_precise* %2, %struct.amortization_counter_precise** %7, align 8
  store %struct.amortization_counter_precise* %3, %struct.amortization_counter_precise** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %62, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @stats_counters, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %7, align 8
  %19 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %10, align 8
  %21 = load double, double* %10, align 8
  %22 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %8, align 8
  %23 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fadd double %21, %24
  store double %25, double* %11, align 8
  %26 = load double, double* %10, align 8
  %27 = fmul double 1.000000e+02, %26
  store double %27, double* %10, align 8
  %28 = load double, double* %11, align 8
  %29 = fcmp olt double %28, 0x3EB0C6F7A0B5ED8D
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %35

31:                                               ; preds = %17
  %32 = load double, double* %10, align 8
  %33 = load double, double* %11, align 8
  %34 = fdiv double %32, %33
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi double [ 0.000000e+00, %30 ], [ %34, %31 ]
  store double %36, double* %10, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 44, i32 9
  %43 = trunc i32 %42 to i8
  %44 = load double, double* %10, align 8
  %45 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %43, double %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %5, align 8
  %58 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %7, align 8
  %59 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %58, i32 1
  store %struct.amortization_counter_precise* %59, %struct.amortization_counter_precise** %7, align 8
  %60 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %8, align 8
  %61 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %60, i32 1
  store %struct.amortization_counter_precise* %61, %struct.amortization_counter_precise** %8, align 8
  br label %62

62:                                               ; preds = %35
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %13

65:                                               ; preds = %13
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, double) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
