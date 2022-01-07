; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-weof.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-weof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@pair = common dso_local global i32* null, align 8
@EV_WRITE = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@test_okay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @SIGPIPE, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i64 @signal(i32 %7, i32 %8)
  %10 = load i64, i64* @SIG_ERR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @AF_UNIX, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = load i32*, i32** @pair, align 8
  %17 = call i32 @evutil_socketpair(i32 %14, i32 %15, i32 0, i32* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %31

20:                                               ; preds = %13
  %21 = call i32 (...) @event_init()
  %22 = load i32*, i32** @pair, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EV_WRITE, align 4
  %26 = load i32, i32* @write_cb, align 4
  %27 = call i32 @event_set(%struct.event* %6, i32 %24, i32 %25, i32 %26, %struct.event* %6)
  %28 = call i32 @event_add(%struct.event* %6, i32* null)
  %29 = call i32 (...) @event_dispatch()
  %30 = load i32, i32* @test_okay, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %19, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @evutil_socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, %struct.event*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
