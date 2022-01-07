; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_fs_event_cb_file_current_dir.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_fs_event_cb_file_current_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@fs_event_cb_called = common dso_local global i64 0, align 8
@fs_event = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@UV_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"watch_file\00", align 1
@fs_event_cb_file_current_dir.timer = internal global %struct.TYPE_7__ zeroinitializer, align 8
@timer_cb_close_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32, i32)* @fs_event_cb_file_current_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_event_cb_file_current_dir(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @fs_event_cb_called, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* @fs_event_cb_called, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @fs_event_cb_called, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, @fs_event
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @UV_CHANGE, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @uv_timer_init(i32 %35, %struct.TYPE_7__* @fs_event_cb_file_current_dir.timer)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fs_event_cb_file_current_dir.timer, i32 0, i32 0), align 8
  %38 = load i32, i32* @timer_cb_close_handle, align 4
  %39 = call i32 @uv_timer_start(%struct.TYPE_7__* @fs_event_cb_file_current_dir.timer, i32 %38, i32 250, i32 0)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @uv_timer_init(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @uv_timer_start(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
