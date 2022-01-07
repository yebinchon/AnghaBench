; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_watch.c_test_callback_ordering.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_watch.c_test_callback_ordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.basic_test_data = type { %struct.event_base* }
%struct.event_base = type { i32 }
%struct.evwatch = type { i32 }
%struct.timeval = type { i32, i64 }

@prepare_callback_1 = common dso_local global i32 0, align 4
@user_arg = common dso_local global i32 0, align 4
@check_callback_1 = common dso_local global i32 0, align 4
@prepare_callback_2 = common dso_local global i32 0, align 4
@check_callback_2 = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@timeout_callback = common dso_local global i32 0, align 4
@iteration = common dso_local global i32 0, align 4
@start_time = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_callback_ordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_callback_ordering(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.evwatch*, align 8
  %6 = alloca %struct.evwatch*, align 8
  %7 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load %struct.event_base*, %struct.event_base** %11, align 8
  store %struct.event_base* %12, %struct.event_base** %4, align 8
  %13 = load %struct.event_base*, %struct.event_base** %4, align 8
  %14 = call %struct.evwatch* @evwatch_prepare_new(%struct.event_base* %13, i32* @prepare_callback_1, i32* @user_arg)
  %15 = load %struct.event_base*, %struct.event_base** %4, align 8
  %16 = call %struct.evwatch* @evwatch_check_new(%struct.event_base* %15, i32* @check_callback_1, i32* @user_arg)
  %17 = load %struct.event_base*, %struct.event_base** %4, align 8
  %18 = call %struct.evwatch* @evwatch_prepare_new(%struct.event_base* %17, i32* @prepare_callback_2, i32* @user_arg)
  store %struct.evwatch* %18, %struct.evwatch** %5, align 8
  %19 = load %struct.event_base*, %struct.event_base** %4, align 8
  %20 = call %struct.evwatch* @evwatch_check_new(%struct.event_base* %19, i32* @check_callback_2, i32* @user_arg)
  store %struct.evwatch* %20, %struct.evwatch** %6, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.event_base*, %struct.event_base** %4, align 8
  %24 = load i32, i32* @EV_TIMEOUT, align 4
  %25 = call i32 @event_base_once(%struct.event_base* %23, i32 -1, i32 %24, i32* @timeout_callback, i32 0, %struct.timeval* %7)
  %26 = load %struct.event_base*, %struct.event_base** %4, align 8
  %27 = call i32 @event_base_dispatch(%struct.event_base* %26)
  store i32 1, i32* @iteration, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @start_time, i32 0, i32 0), align 8
  %28 = load %struct.evwatch*, %struct.evwatch** %5, align 8
  %29 = call i32 @evwatch_free(%struct.evwatch* %28)
  %30 = load %struct.evwatch*, %struct.evwatch** %6, align 8
  %31 = call i32 @evwatch_free(%struct.evwatch* %30)
  %32 = load %struct.event_base*, %struct.event_base** %4, align 8
  %33 = load i32, i32* @EV_TIMEOUT, align 4
  %34 = call i32 @event_base_once(%struct.event_base* %32, i32 -1, i32 %33, i32* @timeout_callback, i32 0, %struct.timeval* %7)
  %35 = load %struct.event_base*, %struct.event_base** %4, align 8
  %36 = call i32 @event_base_dispatch(%struct.event_base* %35)
  ret void
}

declare dso_local %struct.evwatch* @evwatch_prepare_new(%struct.event_base*, i32*, i32*) #1

declare dso_local %struct.evwatch* @evwatch_check_new(%struct.event_base*, i32*, i32*) #1

declare dso_local i32 @event_base_once(%struct.event_base*, i32, i32, i32*, i32, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @evwatch_free(%struct.evwatch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
