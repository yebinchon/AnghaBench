; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_fs_event_queue_readdirchanges.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_fs_event_queue_readdirchanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@uv_directory_watcher_buffer_size = common dso_local global i32 0, align 4
@UV_FS_EVENT_RECURSIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_FILE_NAME = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_DIR_NAME = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_SIZE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_WRITE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_ACCESS = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_CREATION = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_SECURITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @uv_fs_event_queue_readdirchanges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_fs_event_queue_readdirchanges(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @uv_directory_watcher_buffer_size, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UV_FS_EVENT_RECURSIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @TRUE, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @FALSE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* @FILE_NOTIFY_CHANGE_FILE_NAME, align 4
  %45 = load i32, i32* @FILE_NOTIFY_CHANGE_DIR_NAME, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FILE_NOTIFY_CHANGE_ATTRIBUTES, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FILE_NOTIFY_CHANGE_SIZE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_ACCESS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FILE_NOTIFY_CHANGE_CREATION, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FILE_NOTIFY_CHANGE_SECURITY, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @ReadDirectoryChangesW(i64 %27, i32 %30, i32 %31, i32 %43, i32 %58, i32* null, i32* %63, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %42
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 @SET_REQ_ERROR(%struct.TYPE_9__* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = bitcast %struct.TYPE_9__* %73 to i32*
  %75 = call i32 @uv_insert_pending_req(i32* %71, i32* %74)
  br label %76

76:                                               ; preds = %66, %42
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ReadDirectoryChangesW(i64, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SET_REQ_ERROR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @uv_insert_pending_req(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
