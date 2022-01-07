; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_acounter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_acounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amortization_counter_precise = type { double }
%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { double }

@.str = private unnamed_addr constant [15 x i8] c"__CUMULATIVE__\00", align 1
@cum_access_counters = common dso_local global %struct.amortization_counter_precise* null, align 8
@TAT = common dso_local global i32* null, align 8
@acounter_off = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_acounter(i8* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_uri*, align 8
  %10 = alloca %struct.amortization_counter_precise*, align 8
  %11 = alloca %struct.amortization_counter*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @get_acounter_id_by_t(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.cache_uri* @get_uri_f(i8* %18, i32 0)
  store %struct.cache_uri* %19, %struct.cache_uri** %9, align 8
  %20 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %21 = icmp eq %struct.cache_uri* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -2, i32* %4, align 4
  br label %64

27:                                               ; preds = %22
  %28 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** @cum_access_counters, align 8
  store %struct.amortization_counter_precise* %28, %struct.amortization_counter_precise** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %10, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %30, i64 %31
  store %struct.amortization_counter_precise* %32, %struct.amortization_counter_precise** %10, align 8
  %33 = load i32*, i32** @TAT, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %10, align 8
  %38 = call i32 @amortization_counter_precise_increment(i32* %36, %struct.amortization_counter_precise* %37, i32 0)
  %39 = load %struct.amortization_counter_precise*, %struct.amortization_counter_precise** %10, align 8
  %40 = getelementptr inbounds %struct.amortization_counter_precise, %struct.amortization_counter_precise* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %7, align 8
  store double %41, double* %42, align 8
  store i32 0, i32* %4, align 4
  br label %64

43:                                               ; preds = %17
  %44 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %45 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @acounter_off, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = bitcast i32* %48 to %struct.amortization_counter*
  store %struct.amortization_counter* %49, %struct.amortization_counter** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.amortization_counter*, %struct.amortization_counter** %11, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %51, i64 %52
  store %struct.amortization_counter* %53, %struct.amortization_counter** %11, align 8
  %54 = load i32*, i32** @TAT, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.amortization_counter*, %struct.amortization_counter** %11, align 8
  %59 = call i32 @amortization_counter_update(i32* %57, %struct.amortization_counter* %58)
  %60 = load %struct.amortization_counter*, %struct.amortization_counter** %11, align 8
  %61 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %7, align 8
  store double %62, double* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %43, %27, %26, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @get_acounter_id_by_t(i32) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @amortization_counter_precise_increment(i32*, %struct.amortization_counter_precise*, i32) #1

declare dso_local i32 @amortization_counter_update(i32*, %struct.amortization_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
