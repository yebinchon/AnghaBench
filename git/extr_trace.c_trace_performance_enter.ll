; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_trace_performance_enter.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_trace_performance_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_perf_key = common dso_local global i32 0, align 4
@perf_start_times = common dso_local global i32* null, align 8
@perf_indent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Too deep indentation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_performance_enter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @trace_want(i32* @trace_perf_key)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

6:                                                ; preds = %0
  %7 = call i32 (...) @getnanotime()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32*, i32** @perf_start_times, align 8
  %10 = load i64, i64* @perf_indent, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load i64, i64* @perf_indent, align 8
  %13 = add i64 %12, 1
  %14 = load i32*, i32** @perf_start_times, align 8
  %15 = call i64 @ARRAY_SIZE(i32* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i64, i64* @perf_indent, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @perf_indent, align 8
  br label %22

20:                                               ; preds = %6
  %21 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @trace_want(i32*) #1

declare dso_local i32 @getnanotime(...) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
