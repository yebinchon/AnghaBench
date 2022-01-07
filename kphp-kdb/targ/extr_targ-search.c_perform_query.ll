; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"query performed in %.6f seconds\0A\00", align 1
@tot_queries_time = common dso_local global double 0.000000e+00, align 8
@tot_queries = common dso_local global i32 0, align 4
@profiler_cnt = common dso_local global i32* null, align 8
@profiler = common dso_local global i32* null, align 8
@QUERY_STATS_PERIODICITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_query(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @dyn_mark(i32 %6)
  %8 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %9 = call double @get_utime(i32 %8)
  %10 = fneg double %9
  store double %10, double* %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @perform_query_internal(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %14 = call double @get_utime(i32 %13)
  %15 = load double, double* %4, align 8
  %16 = fadd double %15, %14
  store double %16, double* %4, align 8
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = load double, double* %4, align 8
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), double %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load double, double* %4, align 8
  %25 = load double, double* @tot_queries_time, align 8
  %26 = fadd double %25, %24
  store double %26, double* @tot_queries_time, align 8
  %27 = load i32, i32* @tot_queries, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @tot_queries, align 4
  %29 = load i32*, i32** @profiler_cnt, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 15
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** @profiler, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 15
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @verbosity, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load i32, i32* @tot_queries, align 4
  %42 = load i32, i32* @QUERY_STATS_PERIODICITY, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 (...) @dump_profiler_data()
  br label %48

48:                                               ; preds = %46, %40, %23
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @dyn_release(i32 %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @perform_query_internal(i32) #1

declare dso_local i32 @fprintf(i32, i8*, double) #1

declare dso_local i32 @dump_profiler_data(...) #1

declare dso_local i32 @dyn_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
