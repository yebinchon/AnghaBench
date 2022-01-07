; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_unmap_notify_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_unmap_notify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"UnmapNotify for 0x%08x (received from 0x%08x), serial %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Not a managed window, ignoring UnmapNotify event\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ignore_unmap = %d for frame of container %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ignore_unmap = %d, dec\0A\00", align 1
@A__NET_WM_DESKTOP = common dso_local global i32 0, align 4
@A__NET_WM_STATE = common dso_local global i32 0, align 4
@DONT_KILL_WINDOW = common dso_local global i32 0, align 4
@XCB_ENTER_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @handle_unmap_notify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_unmap_notify_event(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %11, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_8__* @con_by_window_id(i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @con_by_frame_id(i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %92

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @conn, align 4
  %43 = call i32 @xcb_get_input_focus(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = call i32 (i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %46, %struct.TYPE_8__* %47)
  br label %82

49:                                               ; preds = %1
  %50 = load i32, i32* @conn, align 4
  %51 = call i32 @xcb_get_input_focus(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  br label %82

65:                                               ; preds = %49
  %66 = load i32, i32* @conn, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @A__NET_WM_DESKTOP, align 4
  %71 = call i32 @xcb_delete_property(i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* @conn, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @A__NET_WM_STATE, align 4
  %77 = call i32 @xcb_delete_property(i32 %72, i32 %75, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = load i32, i32* @DONT_KILL_WINDOW, align 4
  %80 = call i32 @tree_close_internal(%struct.TYPE_8__* %78, i32 %79, i32 0)
  %81 = call i32 (...) @tree_render()
  br label %82

82:                                               ; preds = %65, %56, %41
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @XCB_ENTER_NOTIFY, align 4
  %87 = call i32 @add_ignore_event(i32 %85, i32 %86)
  %88 = load i32, i32* @conn, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @xcb_get_input_focus_reply(i32 %88, i32 %89, i32* null)
  %91 = call i32 @free(i32 %90)
  br label %92

92:                                               ; preds = %82, %29
  ret void
}

declare dso_local i32 @DLOG(i8*, i64, ...) #1

declare dso_local %struct.TYPE_8__* @con_by_window_id(i32) #1

declare dso_local %struct.TYPE_8__* @con_by_frame_id(i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @xcb_get_input_focus(i32) #1

declare dso_local i32 @xcb_delete_property(i32, i32, i32) #1

declare dso_local i32 @tree_close_internal(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @tree_render(...) #1

declare dso_local i32 @add_ignore_event(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xcb_get_input_focus_reply(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
