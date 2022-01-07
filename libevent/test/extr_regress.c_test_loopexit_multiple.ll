; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_loopexit_multiple.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_loopexit_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Loop Multiple exit: \00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_loopexit_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_loopexit_multiple() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = call i32 @setup_test(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %6, %struct.event_base** %4, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i32 200000, i32* %7, align 4
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.event_base*, %struct.event_base** %4, align 8
  %10 = call i32 @event_base_loopexit(%struct.event_base* %9, %struct.timeval* %1)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  store i32 3, i32* %12, align 4
  %13 = load %struct.event_base*, %struct.event_base** %4, align 8
  %14 = call i32 @event_base_loopexit(%struct.event_base* %13, %struct.timeval* %1)
  %15 = call i32 @evutil_gettimeofday(%struct.timeval* %2, i32* null)
  %16 = load %struct.event_base*, %struct.event_base** %4, align 8
  %17 = call i32 @event_base_dispatch(%struct.event_base* %16)
  %18 = call i32 @evutil_gettimeofday(%struct.timeval* %3, i32* null)
  %19 = load %struct.event_base*, %struct.event_base** %4, align 8
  %20 = call i32 @event_base_got_exit(%struct.event_base* %19)
  %21 = call i32 @tt_assert(i32 %20)
  %22 = load %struct.event_base*, %struct.event_base** %4, align 8
  %23 = call i32 @event_base_got_break(%struct.event_base* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @tt_assert(i32 %26)
  %28 = load %struct.event_base*, %struct.event_base** %4, align 8
  %29 = call i32 @event_base_free(%struct.event_base* %28)
  %30 = call i32 @test_timeval_diff_eq(%struct.timeval* %2, %struct.timeval* %3, i32 200)
  store i32 1, i32* @test_ok, align 4
  br label %31

31:                                               ; preds = %0
  %32 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, %struct.timeval*) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @event_base_got_exit(%struct.event_base*) #1

declare dso_local i32 @event_base_got_break(%struct.event_base*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @test_timeval_diff_eq(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
