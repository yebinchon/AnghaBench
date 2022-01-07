; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_set_hidden_state.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_set_hidden_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"setting _NET_WM_STATE_HIDDEN for con = %p\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@A__NET_WM_STATE = common dso_local global i32 0, align 4
@A__NET_WM_STATE_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"removing _NET_WM_STATE_HIDDEN for con = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @set_hidden_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hidden_state(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_11__* @state_for_frame(i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = call i32 @con_is_hidden(%struct.TYPE_12__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %55

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @DLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %28)
  %30 = load i32, i32* @conn, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @A__NET_WM_STATE, align 4
  %37 = load i32, i32* @A__NET_WM_STATE_HIDDEN, align 4
  %38 = call i32 @xcb_add_property_atom(i32 %30, i32 %35, i32 %36, i32 %37)
  br label %51

39:                                               ; preds = %24
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = call i32 @DLOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %40)
  %42 = load i32, i32* @conn, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @A__NET_WM_STATE, align 4
  %49 = load i32, i32* @A__NET_WM_STATE_HIDDEN, align 4
  %50 = call i32 @xcb_remove_property_atom(i32 %42, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %27
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %23, %9
  ret void
}

declare dso_local %struct.TYPE_11__* @state_for_frame(i32) #1

declare dso_local i32 @con_is_hidden(%struct.TYPE_12__*) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @xcb_add_property_atom(i32, i32, i32, i32) #1

declare dso_local i32 @xcb_remove_property_atom(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
