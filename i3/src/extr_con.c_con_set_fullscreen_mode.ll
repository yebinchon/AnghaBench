; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_set_fullscreen_mode.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_set_fullscreen_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mode now: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fullscreen_mode\00", align 1
@CF_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Setting _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@A__NET_WM_STATE = common dso_local global i32 0, align 4
@A__NET_WM_STATE_FULLSCREEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Removing _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @con_set_fullscreen_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_set_fullscreen_mode(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  %12 = call i32 (i8*, %struct.TYPE_7__*, ...) @DLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CF_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, %struct.TYPE_7__*, ...) @DLOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %27, i32 %32)
  %34 = load i32, i32* @conn, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @A__NET_WM_STATE, align 4
  %41 = load i32, i32* @A__NET_WM_STATE_FULLSCREEN, align 4
  %42 = call i32 @xcb_add_property_atom(i32 %34, i32 %39, i32 %40, i32 %41)
  br label %60

43:                                               ; preds = %20
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, %struct.TYPE_7__*, ...) @DLOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %44, i32 %49)
  %51 = load i32, i32* @conn, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @A__NET_WM_STATE, align 4
  %58 = load i32, i32* @A__NET_WM_STATE_FULLSCREEN, align 4
  %59 = call i32 @xcb_remove_property_atom(i32 %51, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %19, %43, %26
  ret void
}

declare dso_local i32 @DLOG(i8*, %struct.TYPE_7__*, ...) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @xcb_add_property_atom(i32, i32, i32, i32) #1

declare dso_local i32 @xcb_remove_property_atom(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
