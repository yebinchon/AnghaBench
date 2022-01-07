; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_multiplesignal.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_multiplesignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Multiple signal: \00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_multiplesignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_multiplesignal() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca %struct.event, align 4
  %3 = alloca %struct.itimerval, align 8
  %4 = call i32 @setup_test(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @SIGALRM, align 4
  %6 = load i32, i32* @signal_cb, align 4
  %7 = call i32 @evsignal_set(%struct.event* %1, i32 %5, i32 %6, %struct.event* %1)
  %8 = call i32 @evsignal_add(%struct.event* %1, i32* null)
  %9 = load i32, i32* @SIGALRM, align 4
  %10 = load i32, i32* @signal_cb, align 4
  %11 = call i32 @evsignal_set(%struct.event* %2, i32 %9, i32 %10, %struct.event* %2)
  %12 = call i32 @evsignal_add(%struct.event* %2, i32* null)
  %13 = call i32 @memset(%struct.itimerval* %3, i32 0, i32 16)
  %14 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 100000, i32* %17, align 8
  %18 = load i32, i32* @ITIMER_REAL, align 4
  %19 = call i32 @setitimer(i32 %18, %struct.itimerval* %3, i32* null)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %24

22:                                               ; preds = %0
  %23 = call i32 (...) @event_dispatch()
  br label %24

24:                                               ; preds = %22, %21
  %25 = call i32 @evsignal_del(%struct.event* %1)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, i64* @test_ok, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = call i32 @evsignal_del(%struct.event* %2)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 0, i64* @test_ok, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @evsignal_set(%struct.event*, i32, i32, %struct.event*) #1

declare dso_local i32 @evsignal_add(%struct.event*, i32*) #1

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
