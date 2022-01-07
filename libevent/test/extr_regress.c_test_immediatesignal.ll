; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_immediatesignal.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_immediatesignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4
@EVLOOP_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_immediatesignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_immediatesignal() #0 {
  %1 = alloca %struct.event, align 4
  store i64 0, i64* @test_ok, align 8
  %2 = load i32, i32* @SIGUSR1, align 4
  %3 = load i32, i32* @signal_cb, align 4
  %4 = call i32 @evsignal_set(%struct.event* %1, i32 %2, i32 %3, %struct.event* %1)
  %5 = call i32 @evsignal_add(%struct.event* %1, i32* null)
  %6 = call i32 (...) @getpid()
  %7 = load i32, i32* @SIGUSR1, align 4
  %8 = call i32 @kill(i32 %6, i32 %7)
  %9 = load i32, i32* @EVLOOP_NONBLOCK, align 4
  %10 = call i32 @event_loop(i32 %9)
  %11 = call i32 @evsignal_del(%struct.event* %1)
  %12 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @evsignal_set(%struct.event*, i32, i32, %struct.event*) #1

declare dso_local i32 @evsignal_add(%struct.event*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @event_loop(i32) #1

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
