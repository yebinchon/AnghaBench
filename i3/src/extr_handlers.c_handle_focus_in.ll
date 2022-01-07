; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_focus_in.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_focus_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"focus change in, for window 0x%08x\0A\00", align 1
@root = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"Received focus in for root window, refocusing the focused window.\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@XCB_NONE = common dso_local global i64 0, align 8
@focused_id = common dso_local global i64 0, align 8
@croot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"That is con %p / %s\0A\00", align 1
@XCB_NOTIFY_MODE_GRAB = common dso_local global i64 0, align 8
@XCB_NOTIFY_MODE_UNGRAB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"FocusIn event for grab/ungrab, ignoring\0A\00", align 1
@XCB_NOTIFY_DETAIL_POINTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"notify detail is pointer, ignoring this event\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"focus matches the currently focused window, not doing anything\0A\00", align 1
@CT_DOCKAREA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"This is a dock client, not focusing.\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"focus is different / refocusing floating window: updating decorations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @handle_focus_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_focus_in(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @root, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @focused, align 4
  %16 = call i32 @con_focus(i32 %15)
  %17 = load i64, i64* @XCB_NONE, align 8
  store i64 %17, i64* @focused_id, align 8
  %18 = load i32, i32* @croot, align 4
  %19 = call i32 @x_push_changes(i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_10__* @con_by_window_id(i64 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %3, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  br label %89

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %33, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XCB_NOTIFY_MODE_GRAB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XCB_NOTIFY_MODE_UNGRAB, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %32
  %50 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %89

51:                                               ; preds = %43
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XCB_NOTIFY_DETAIL_POINTER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %89

59:                                               ; preds = %51
  %60 = load i64, i64* @focused_id, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = call i32 @con_inside_floating(%struct.TYPE_10__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %89

71:                                               ; preds = %65, %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CT_DOCKAREA, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %89

81:                                               ; preds = %71
  %82 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0))
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i32 @con_activate_unblock(%struct.TYPE_10__* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* @focused_id, align 8
  %88 = call i32 (...) @tree_render()
  br label %89

89:                                               ; preds = %81, %79, %69, %57, %49, %31
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @con_focus(i32) #1

declare dso_local i32 @x_push_changes(i32) #1

declare dso_local %struct.TYPE_10__* @con_by_window_id(i64) #1

declare dso_local i32 @con_inside_floating(%struct.TYPE_10__*) #1

declare dso_local i32 @con_activate_unblock(%struct.TYPE_10__*) #1

declare dso_local i32 @tree_render(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
