; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_timer_bias_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_timer_bias_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.event = type { i32 }

@timer_bias_start = common dso_local global %struct.timeval zeroinitializer, align 8
@timer_bias_spend = common dso_local global i32 0, align 4
@timer_bias_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @timer_bias_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_bias_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.event*
  store %struct.event* %11, %struct.event** %7, align 8
  %12 = call i32 @evutil_gettimeofday(%struct.timeval* %8, i32* null)
  %13 = call i32 @evutil_timersub(%struct.timeval* %8, %struct.timeval* @timer_bias_start, %struct.timeval* %9)
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to double
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 1.000000e+06
  %21 = fadd double %16, %20
  %22 = load i32, i32* @timer_bias_spend, align 4
  %23 = sitofp i32 %22 to double
  %24 = fadd double %23, %21
  %25 = fptosi double %24 to i32
  store i32 %25, i32* @timer_bias_spend, align 4
  %26 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @timer_bias_start to i8*), i8* align 8 %26, i64 16, i1 false)
  %27 = load i32, i32* @timer_bias_events, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @timer_bias_events, align 4
  %29 = icmp eq i32 %28, 100
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.event*, %struct.event** %7, align 8
  %32 = call i32 @event_del(%struct.event* %31)
  br label %33

33:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @event_del(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
