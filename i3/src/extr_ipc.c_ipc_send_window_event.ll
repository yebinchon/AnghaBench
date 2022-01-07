; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_window_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_window_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Issue IPC window %s event (con = %p, window = 0x%08x)\0A\00", align 1
@XCB_WINDOW_NONE = common dso_local global i32 0, align 4
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@map_open = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@map_close = common dso_local global i32 0, align 4
@get_buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@I3_IPC_EVENT_WINDOW = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_send_window_event(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @XCB_WINDOW_NONE, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %19, %14 ], [ %21, %20 ]
  %24 = call i32 @DLOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %8, %struct.TYPE_7__* %9, i32 %23)
  %25 = load i32, i32* @LC_NUMERIC, align 4
  %26 = call i32 @setlocale(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @ygenalloc()
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @map_open, align 4
  %29 = call i32 (i32, ...) @y(i32 %28)
  %30 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @ystr(i8* %31)
  %33 = call i32 @ystr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @dump_node(i32 %34, %struct.TYPE_7__* %35, i32 0)
  %37 = load i32, i32* @map_close, align 4
  %38 = call i32 (i32, ...) @y(i32 %37)
  %39 = load i32, i32* @get_buf, align 4
  %40 = call i32 (i32, ...) @y(i32 %39, i8** %6, i32* %7)
  %41 = load i32, i32* @I3_IPC_EVENT_WINDOW, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @ipc_send_event(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i32, i32* @free, align 4
  %45 = call i32 (i32, ...) @y(i32 %44)
  %46 = load i32, i32* @LC_NUMERIC, align 4
  %47 = call i32 @setlocale(i32 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DLOG(i8*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @ygenalloc(...) #1

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @dump_node(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ipc_send_event(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
