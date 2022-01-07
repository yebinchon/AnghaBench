; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_on_remove_child.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_on_remove_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"on_remove_child\0A\00", align 1
@CT_OUTPUT = common dso_local global i64 0, align 8
@CT_ROOT = common dso_local global i64 0, align 8
@CT_DOCKAREA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"not handling, type = %d, name = %s\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Closing old workspace (%p / %s), it is empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@DONT_KILL_WINDOW = common dso_local global i32 0, align 4
@get_buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@I3_IPC_EVENT_WORKSPACE = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Container empty, closing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @con_on_remove_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_on_remove_child(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CT_OUTPUT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CT_ROOT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CT_DOCKAREA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CT_OUTPUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30, %19, %13, %1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %44)
  br label %98

46:                                               ; preds = %30, %25
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CT_WORKSPACE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = call i64 @TAILQ_EMPTY(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = call i32 @workspace_is_visible(%struct.TYPE_13__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %62, i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = call i32 @ipc_marshal_workspace_event(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %67, i32* null)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = load i32, i32* @DONT_KILL_WINDOW, align 4
  %71 = call i32 @tree_close_internal(%struct.TYPE_13__* %69, i32 %70, i32 0)
  %72 = load i32, i32* @get_buf, align 4
  %73 = call i32 (i32, ...) @y(i32 %72, i8** %4, i32* %5)
  %74 = load i32, i32* @I3_IPC_EVENT_WORKSPACE, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @ipc_send_event(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load i32, i32* @free, align 4
  %78 = call i32 (i32, ...) @y(i32 %77)
  br label %79

79:                                               ; preds = %61, %57, %52
  br label %98

80:                                               ; preds = %46
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @con_force_split_parents_redraw(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @con_has_urgent_child(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = call i32 @con_update_parents_urgency(%struct.TYPE_13__* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @con_num_children(%struct.TYPE_13__* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = load i32, i32* @DONT_KILL_WINDOW, align 4
  %97 = call i32 @tree_close_internal(%struct.TYPE_13__* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %38, %79, %93, %80
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @workspace_is_visible(%struct.TYPE_13__*) #1

declare dso_local i32 @LOG(i8*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ipc_marshal_workspace_event(i8*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @tree_close_internal(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ipc_send_event(i8*, i32, i8*) #1

declare dso_local i32 @con_force_split_parents_redraw(%struct.TYPE_13__*) #1

declare dso_local i32 @con_has_urgent_child(%struct.TYPE_13__*) #1

declare dso_local i32 @con_update_parents_urgency(%struct.TYPE_13__*) #1

declare dso_local i32 @con_num_children(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
