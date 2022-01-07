; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_floating_drag_window.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_floating_drag_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"floating_drag_window\0A\00", align 1
@XCB_NONE = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_MOVE = common dso_local global i32 0, align 4
@drag_window_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"The container has been closed in the meantime.\0A\00", align 1
@DRAG_REVERT = common dso_local global i64 0, align 8
@SCRATCHPAD_FRESH = common dso_local global i64 0, align 8
@SCRATCHPAD_CHANGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floating_drag_window(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @tree_render()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @XCB_NONE, align 4
  %17 = load i32, i32* @XCURSOR_CURSOR_MOVE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @drag_window_callback, align 4
  %20 = call i64 @drag_pointer(%struct.TYPE_6__* %14, i32* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32* null)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call i32 @con_exists(%struct.TYPE_6__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 @DLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %46

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @DRAG_REVERT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @floating_reposition(%struct.TYPE_6__* %31, i32 %32)
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCRATCHPAD_FRESH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @SCRATCHPAD_CHANGED, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = call i32 (...) @tree_render()
  br label %46

46:                                               ; preds = %44, %30, %24
  ret void
}

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @tree_render(...) #1

declare dso_local i64 @drag_pointer(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @con_exists(%struct.TYPE_6__*) #1

declare dso_local i32 @floating_reposition(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
