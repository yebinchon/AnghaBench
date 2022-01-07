; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_simplesignal_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_simplesignal_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SIGALRM = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_simplesignal_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simplesignal_impl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event, align 4
  %4 = alloca %struct.itimerval, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SIGALRM, align 4
  %6 = load i32, i32* @signal_cb, align 4
  %7 = call i32 @evsignal_set(%struct.event* %3, i32 %5, i32 %6, %struct.event* %3)
  %8 = call i32 @evsignal_add(%struct.event* %3, i32* null)
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @evsignal_del(%struct.event* %3)
  %13 = call i32 @evsignal_add(%struct.event* %3, i32* null)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 @memset(%struct.itimerval* %4, i32 0, i32 16)
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 100000, i32* %19, align 8
  %20 = load i32, i32* @ITIMER_REAL, align 4
  %21 = call i32 @setitimer(i32 %20, %struct.itimerval* %4, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %26

24:                                               ; preds = %14
  %25 = call i32 (...) @event_dispatch()
  br label %26

26:                                               ; preds = %24, %23
  %27 = call i32 @evsignal_del(%struct.event* %3)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* @test_ok, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @evsignal_set(%struct.event*, i32, i32, %struct.event*) #1

declare dso_local i32 @evsignal_add(%struct.event*, i32*) #1

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
