; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_signal_pipeloss.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_signal_pipeloss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@test_ok = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"signal pipe not closed. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_signal_pipeloss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_signal_pipeloss() #0 {
  %1 = alloca %struct.event_base*, align 8
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* @test_ok, align 4
  %4 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %4, %struct.event_base** %1, align 8
  %5 = load %struct.event_base*, %struct.event_base** %1, align 8
  %6 = getelementptr inbounds %struct.event_base, %struct.event_base* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %11, %struct.event_base** %2, align 8
  %12 = load %struct.event_base*, %struct.event_base** %2, align 8
  %13 = call i32 @event_base_free(%struct.event_base* %12)
  %14 = load %struct.event_base*, %struct.event_base** %1, align 8
  %15 = call i32 @event_base_free(%struct.event_base* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @close(i32 %16)
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EBADF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %0
  %24 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @test_ok, align 4
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* @test_ok, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local %struct.event_base* @event_init(...) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
