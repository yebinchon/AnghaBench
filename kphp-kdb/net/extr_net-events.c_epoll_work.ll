; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_epoll_work.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_epoll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_heap_size = common dso_local global i64 0, align 8
@et_heap_size = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i64 0, align 8
@tot_idle_time = common dso_local global double 0.000000e+00, align 8
@a_idle_time = common dso_local global double 0.000000e+00, align 8
@epoll_work.prev_now = internal global i32 0, align 4
@a_idle_quotient = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @epoll_work(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 10000, i32* %5, align 4
  %8 = load i64, i64* @ev_heap_size, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @et_heap_size, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10, %1
  %14 = call i32 @time(i32 0)
  store i32 %14, i32* @now, align 4
  %15 = call double (...) @get_utime_monotonic()
  br label %16

16:                                               ; preds = %29, %13
  %17 = call i32 (...) @epoll_runqueue()
  %18 = call i32 (...) @epoll_run_timers()
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @ev_heap_size, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @pending_signals, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %16, label %31

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i64, i64* @pending_signals, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %85

36:                                               ; preds = %32
  %37 = call double (...) @get_utime_monotonic()
  store double %37, double* %6, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @epoll_fetch_events(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = call double (...) @get_utime_monotonic()
  %49 = load double, double* %6, align 8
  %50 = fsub double %48, %49
  store double %50, double* %7, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* @tot_idle_time, align 8
  %53 = fadd double %52, %51
  store double %53, double* @tot_idle_time, align 8
  %54 = load double, double* %7, align 8
  %55 = load double, double* @a_idle_time, align 8
  %56 = fadd double %55, %54
  store double %56, double* @a_idle_time, align 8
  %57 = call i32 @time(i32 0)
  store i32 %57, i32* @now, align 4
  %58 = load i32, i32* @now, align 4
  %59 = load i32, i32* @epoll_work.prev_now, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %45
  %62 = load i32, i32* @now, align 4
  %63 = load i32, i32* @epoll_work.prev_now, align 4
  %64 = add nsw i32 %63, 60
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* @epoll_work.prev_now, align 4
  %69 = load i32, i32* @now, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load double, double* @a_idle_time, align 8
  %73 = fmul double %72, 0x3FEFAEE41E6A7498
  store double %73, double* @a_idle_time, align 8
  %74 = load double, double* @a_idle_quotient, align 8
  %75 = fmul double %74, 0x3FEFAEE41E6A7498
  %76 = fadd double %75, 1.000000e+00
  store double %76, double* @a_idle_quotient, align 8
  %77 = load i32, i32* @epoll_work.prev_now, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @epoll_work.prev_now, align 4
  br label %67

79:                                               ; preds = %67
  br label %82

80:                                               ; preds = %61, %45
  %81 = load i32, i32* @now, align 4
  store i32 %81, i32* @epoll_work.prev_now, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = call i32 (...) @epoll_run_timers()
  %84 = call i32 (...) @epoll_runqueue()
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %35
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @time(i32) #1

declare dso_local double @get_utime_monotonic(...) #1

declare dso_local i32 @epoll_runqueue(...) #1

declare dso_local i32 @epoll_run_timers(...) #1

declare dso_local i32 @epoll_fetch_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
