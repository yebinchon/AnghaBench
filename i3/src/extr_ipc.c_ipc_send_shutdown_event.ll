; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_shutdown_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_shutdown_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"change\00", align 1
@SHUTDOWN_REASON_RESTART = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@SHUTDOWN_REASON_EXIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@map_close = common dso_local global i32 0, align 4
@get_buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@I3_IPC_EVENT_SHUTDOWN = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ipc_send_shutdown_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_send_shutdown_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i32 (...) @ygenalloc()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @map_open, align 4
  %8 = call i32 (i32, ...) @y(i32 %7)
  %9 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @SHUTDOWN_REASON_RESTART, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @ystr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %22

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @SHUTDOWN_REASON_EXIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* @map_close, align 4
  %24 = call i32 (i32, ...) @y(i32 %23)
  %25 = load i32, i32* @get_buf, align 4
  %26 = call i32 (i32, ...) @y(i32 %25, i8** %4, i32* %5)
  %27 = load i32, i32* @I3_IPC_EVENT_SHUTDOWN, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @ipc_send_event(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i32, i32* @free, align 4
  %31 = call i32 (i32, ...) @y(i32 %30)
  ret void
}

declare dso_local i32 @ygenalloc(...) #1

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @ipc_send_event(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
