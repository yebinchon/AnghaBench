; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_console_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@uv_tty_output_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 67, i32 79, i32 78, i32 79, i32 85, i32 84, i32 36, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@uv__tty_console_handle = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@uv__tty_console_resize_message_loop_thread = common dso_local global i32 0, align 4
@WT_EXECUTELONGFUNCTION = common dso_local global i32 0, align 4
@uv__tty_console_resize_mutex = common dso_local global i32 0, align 4
@uv__tty_console_width = common dso_local global i32 0, align 4
@uv__tty_console_height = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_console_init() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = call i64 @uv_sem_init(i32* @uv_tty_output_lock, i32 1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @abort() #3
  unreachable

6:                                                ; preds = %0
  %7 = load i32, i32* @GENERIC_READ, align 4
  %8 = load i32, i32* @GENERIC_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %11 = load i32, i32* @OPEN_EXISTING, align 4
  %12 = call i64 @CreateFileW(i8* bitcast ([8 x i32]* @.str to i8*), i32 %9, i32 %10, i32 0, i32 %11, i32 0, i32 0)
  store i64 %12, i64* @uv__tty_console_handle, align 8
  %13 = load i64, i64* @uv__tty_console_handle, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %6
  %17 = load i32, i32* @uv__tty_console_resize_message_loop_thread, align 4
  %18 = load i32, i32* @WT_EXECUTELONGFUNCTION, align 4
  %19 = call i32 @QueueUserWorkItem(i32 %17, i32* null, i32 %18)
  %20 = call i32 @uv_mutex_init(i32* @uv__tty_console_resize_mutex)
  %21 = load i64, i64* @uv__tty_console_handle, align 8
  %22 = call i64 @GetConsoleScreenBufferInfo(i64 %21, %struct.TYPE_7__* %1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* @uv__tty_console_width, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @uv__tty_console_height, align 8
  br label %36

36:                                               ; preds = %24, %16
  br label %37

37:                                               ; preds = %36, %6
  ret void
}

declare dso_local i64 @uv_sem_init(i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @QueueUserWorkItem(i32, i32*, i32) #1

declare dso_local i32 @uv_mutex_init(i32*) #1

declare dso_local i64 @GetConsoleScreenBufferInfo(i64, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
