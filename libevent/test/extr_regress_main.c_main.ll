; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"EVENT_NO_DEBUG_LOCKS\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"EVENT_DEBUG_MODE\00", align 1
@libevent_tests_running_in_debug_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"EVENT_DEBUG_LOGGING_ALL\00", align 1
@EVENT_DBG_ALL = common dso_local global i32 0, align 4
@testaliases = common dso_local global i32 0, align 4
@test_weakrand_state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"EVENT_NO_FILE_BUFFERING\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@testgroups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @SIGPIPE, align 4
  %7 = load i32, i32* @SIG_IGN, align 4
  %8 = call i64 @signal(i32 %6, i32 %7)
  %9 = load i64, i64* @SIG_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = call i64 @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @evthread_enable_lock_debugging()
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i64 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @event_enable_debug_mode()
  store i32 1, i32* @libevent_tests_running_in_debug_mode, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i64 @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EVENT_DBG_ALL, align 4
  %27 = call i32 @event_enable_debug_logging(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @testaliases, align 4
  %30 = call i32 @tinytest_set_aliases(i32 %29)
  %31 = call i32 @evutil_weakrand_seed_(i32* @test_weakrand_state, i32 0)
  %32 = call i64 @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @setbuf(i32 %35, i32* null)
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @setbuf(i32 %37, i32* null)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @testgroups, align 4
  %43 = call i64 @tinytest_main(i32 %40, i8** %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %48

46:                                               ; preds = %39
  %47 = call i32 (...) @libevent_global_shutdown()
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %45, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @evthread_enable_lock_debugging(...) #1

declare dso_local i32 @event_enable_debug_mode(...) #1

declare dso_local i32 @event_enable_debug_logging(i32) #1

declare dso_local i32 @tinytest_set_aliases(i32) #1

declare dso_local i32 @evutil_weakrand_seed_(i32*, i32) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i64 @tinytest_main(i32, i8**, i32) #1

declare dso_local i32 @libevent_global_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
