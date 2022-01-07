; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_timer_bias_calculate.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_timer_bias_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event_config = type { i32 }
%struct.event_base = type { i32 }
%struct.event = type { i32 }

@__const.timer_bias_calculate.tv = private unnamed_addr constant %struct.timeval { i32 0, i32 1 }, align 4
@EVENT_BASE_FLAG_PRECISE_TIMER = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@timer_bias_cb = common dso_local global i32 0, align 4
@timer_bias_start = common dso_local global i32 0, align 4
@timer_bias_spend = common dso_local global i32 0, align 4
@timer_bias_events = common dso_local global i32 0, align 4
@TIMER_MAX_COST_USEC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Couldn't create event for CPU cycle counter bias\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @timer_bias_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @timer_bias_calculate() #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.event_config*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.event_config* null, %struct.event_config** %2, align 8
  store %struct.event_base* null, %struct.event_base** %3, align 8
  store %struct.event* null, %struct.event** %4, align 8
  %6 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.timeval* @__const.timer_bias_calculate.tv to i8*), i64 8, i1 false)
  %7 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %7, %struct.event_config** %2, align 8
  %8 = load %struct.event_config*, %struct.event_config** %2, align 8
  %9 = icmp ne %struct.event_config* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %53

11:                                               ; preds = %0
  %12 = load %struct.event_config*, %struct.event_config** %2, align 8
  %13 = load i32, i32* @EVENT_BASE_FLAG_PRECISE_TIMER, align 4
  %14 = call i64 @event_config_set_flag(%struct.event_config* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %53

17:                                               ; preds = %11
  %18 = load %struct.event_config*, %struct.event_config** %2, align 8
  %19 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %18)
  store %struct.event_base* %19, %struct.event_base** %3, align 8
  %20 = load %struct.event_base*, %struct.event_base** %3, align 8
  %21 = icmp ne %struct.event_base* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.event_base*, %struct.event_base** %3, align 8
  %25 = load i32, i32* @EV_PERSIST, align 4
  %26 = load i32, i32* @timer_bias_cb, align 4
  %27 = call i32 (...) @event_self_cbarg()
  %28 = call %struct.event* @event_new(%struct.event_base* %24, i32 -1, i32 %25, i32 %26, i32 %27)
  store %struct.event* %28, %struct.event** %4, align 8
  %29 = load %struct.event*, %struct.event** %4, align 8
  %30 = icmp ne %struct.event* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.event*, %struct.event** %4, align 8
  %33 = call i64 @event_add(%struct.event* %32, %struct.timeval* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23
  br label %53

36:                                               ; preds = %31
  %37 = call i32 @evutil_gettimeofday(i32* @timer_bias_start, i32* null)
  %38 = load %struct.event_base*, %struct.event_base** %3, align 8
  %39 = call i32 @event_base_dispatch(%struct.event_base* %38)
  %40 = load %struct.event*, %struct.event** %4, align 8
  %41 = call i32 @event_free(%struct.event* %40)
  %42 = load i32, i32* @timer_bias_spend, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = load i32, i32* @timer_bias_events, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %44, %46
  %48 = load i32, i32* @TIMER_MAX_COST_USEC, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = fptosi double %50 to i32
  %52 = call double @MIN(i32 %51, i32 5)
  store double %52, double* %1, align 8
  br label %74

53:                                               ; preds = %35, %22, %16, %10
  %54 = load %struct.event_config*, %struct.event_config** %2, align 8
  %55 = icmp ne %struct.event_config* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.event_config*, %struct.event_config** %2, align 8
  %58 = call i32 @event_config_free(%struct.event_config* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.event*, %struct.event** %4, align 8
  %61 = icmp ne %struct.event* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.event*, %struct.event** %4, align 8
  %64 = call i32 @event_free(%struct.event* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.event_base*, %struct.event_base** %3, align 8
  %67 = icmp ne %struct.event_base* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.event_base*, %struct.event_base** %3, align 8
  %70 = call i32 @event_base_free(%struct.event_base* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store double -1.000000e+00, double* %1, align 8
  br label %74

74:                                               ; preds = %71, %36
  %75 = load double, double* %1, align 8
  ret double %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.event_config* @event_config_new(...) #2

declare dso_local i64 @event_config_set_flag(%struct.event_config*, i32) #2

declare dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config*) #2

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, i32) #2

declare dso_local i32 @event_self_cbarg(...) #2

declare dso_local i64 @event_add(%struct.event*, %struct.timeval*) #2

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #2

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #2

declare dso_local i32 @event_free(%struct.event*) #2

declare dso_local double @MIN(i32, i32) #2

declare dso_local i32 @event_config_free(%struct.event_config*) #2

declare dso_local i32 @event_base_free(%struct.event_base*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
