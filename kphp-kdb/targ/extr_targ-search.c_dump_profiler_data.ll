; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_dump_profiler_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_dump_profiler_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROFILERS_NUM = common dso_local global i64 0, align 8
@profiler_cnt = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%d queries performed in %.6f seconds, %.6f average; tot_users=%d\0A\00", align 1
@tot_queries = common dso_local global i32 0, align 4
@tot_queries_time = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%ld:%llu/%llu=%.0f \00", align 1
@profiler = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_profiler_data() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @PROFILERS_NUM, align 8
  store i64 %3, i64* %2, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32*, i32** @profiler_cnt, align 8
  %9 = load i64, i64* %2, align 8
  %10 = sub nsw i64 %9, 1
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i1 [ false, %4 ], [ %14, %7 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i64, i64* %2, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %2, align 8
  br label %4

20:                                               ; preds = %15
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @tot_queries, align 4
  %23 = load i32, i32* @tot_queries_time, align 4
  %24 = load i32, i32* @tot_queries, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @tot_queries_time, align 4
  %28 = load i32, i32* @tot_queries, align 4
  %29 = sdiv i32 %27, %28
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load i32, i32* @tot_users, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %32, i32 %33)
  store i64 0, i64* %1, align 8
  br label %35

35:                                               ; preds = %71, %31
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* %1, align 8
  %42 = load i64*, i64** @profiler, align 8
  %43 = load i64, i64* %1, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** @profiler_cnt, align 8
  %47 = load i64, i64* %1, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @profiler_cnt, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %39
  %56 = load i64*, i64** @profiler, align 8
  %57 = load i64, i64* %1, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = load i32*, i32** @profiler_cnt, align 8
  %62 = load i64, i64* %1, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %60, %65
  br label %68

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67, %55
  %69 = phi double [ %66, %55 ], [ 0.000000e+00, %67 ]
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %45, i32 %49, double %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %1, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %1, align 8
  br label %35

74:                                               ; preds = %35
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
