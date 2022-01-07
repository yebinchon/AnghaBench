; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_watch.c_test_timeout_unavailable.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_watch.c_test_timeout_unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { %struct.event_base* }
%struct.event_base = type { i32 }

@prepare_callback_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_timeout_unavailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timeout_unavailable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.event_base*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.basic_test_data*
  store %struct.basic_test_data* %6, %struct.basic_test_data** %3, align 8
  %7 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %8 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %7, i32 0, i32 0
  %9 = load %struct.event_base*, %struct.event_base** %8, align 8
  store %struct.event_base* %9, %struct.event_base** %4, align 8
  %10 = load %struct.event_base*, %struct.event_base** %4, align 8
  %11 = call i32 @evwatch_prepare_new(%struct.event_base* %10, i32* @prepare_callback_3, i32* null)
  %12 = load %struct.event_base*, %struct.event_base** %4, align 8
  %13 = call i32 @event_base_dispatch(%struct.event_base* %12)
  ret void
}

declare dso_local i32 @evwatch_prepare_new(%struct.event_base*, i32*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
