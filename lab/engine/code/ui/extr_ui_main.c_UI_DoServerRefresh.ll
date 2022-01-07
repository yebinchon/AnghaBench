; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DoServerRefresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DoServerRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@qfalse = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ui_netSource = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@UIAS_FAVORITES = common dso_local global i64 0, align 8
@UIAS_LOCAL = common dso_local global i64 0, align 8
@AS_LOCAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@AS_GLOBAL = common dso_local global i32 0, align 4
@EXEC_NOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"localservers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_DoServerRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DoServerRefresh() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @qfalse, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 1, i32 1), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %65

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui_netSource, i32 0, i32 0), align 8
  %8 = load i64, i64* @UIAS_FAVORITES, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui_netSource, i32 0, i32 0), align 8
  %12 = load i64, i64* @UIAS_LOCAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @AS_LOCAL, align 4
  %16 = call i64 @trap_LAN_GetServerCount(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @qtrue, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %28

21:                                               ; preds = %10
  %22 = load i32, i32* @AS_GLOBAL, align 4
  %23 = call i64 @trap_LAN_GetServerCount(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %65

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %29
  %39 = call i32 (...) @UI_SourceForLAN()
  %40 = call i64 @trap_LAN_UpdateVisiblePings(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %44 = add nsw i64 %43, 1000
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 1, i32 0), align 8
  br label %62

45:                                               ; preds = %38
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = call i32 @UI_BuildServerDisplayList(i32 2)
  %50 = call i32 (...) @UI_StopServerRefresh()
  br label %61

51:                                               ; preds = %45
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui_netSource, i32 0, i32 0), align 8
  %53 = load i64, i64* @UIAS_LOCAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @EXEC_NOW, align 4
  %57 = call i32 @trap_Cmd_ExecuteText(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %59 = add nsw i64 %58, 5000
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 1, i32 0), align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* @qfalse, align 4
  %64 = call i32 @UI_BuildServerDisplayList(i32 %63)
  br label %65

65:                                               ; preds = %62, %36, %5
  ret void
}

declare dso_local i64 @trap_LAN_GetServerCount(i32) #1

declare dso_local i64 @trap_LAN_UpdateVisiblePings(i32) #1

declare dso_local i32 @UI_SourceForLAN(...) #1

declare dso_local i32 @UI_BuildServerDisplayList(i32) #1

declare dso_local i32 @UI_StopServerRefresh(...) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
