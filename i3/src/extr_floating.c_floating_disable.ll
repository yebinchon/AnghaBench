; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_floating_disable.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_floating_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, double, i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [47 x i8] c"Container isn't floating, not doing anything.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Can't disable floating for container in internal workspace.\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@DONT_KILL_WINDOW = common dso_local global i32 0, align 4
@AFTER = common dso_local global i32 0, align 4
@FLOATING_USER_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"floating\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floating_disable(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %7 = call i32 @con_is_floating(%struct.TYPE_18__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = call %struct.TYPE_18__* @con_get_workspace(%struct.TYPE_18__* %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = call i64 @con_is_internal(%struct.TYPE_18__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @LOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %60

19:                                               ; preds = %11
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = call %struct.TYPE_18__* @con_descend_tiling_focused(%struct.TYPE_18__* %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %4, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CT_WORKSPACE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %5, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = call i32 @con_detach(%struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = load i32, i32* @DONT_KILL_WINDOW, align 4
  %37 = call i32 @tree_close_internal(%struct.TYPE_18__* %35, i32 %36, i32 1)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = call i32 @con_attach(%struct.TYPE_18__* %38, %struct.TYPE_18__* %39, i32 0)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  store double 0.000000e+00, double* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = call i32 @con_fix_percent(%struct.TYPE_18__* %45)
  br label %52

47:                                               ; preds = %19
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = load i32, i32* @AFTER, align 4
  %51 = call i32 @insert_con_into(%struct.TYPE_18__* %48, %struct.TYPE_18__* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %27
  %53 = load i32, i32* @FLOATING_USER_OFF, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = call i32 @floating_set_hint_atom(%struct.TYPE_18__* %56, i32 0)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %58)
  br label %60

60:                                               ; preds = %52, %17, %9
  ret void
}

declare dso_local i32 @con_is_floating(%struct.TYPE_18__*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local %struct.TYPE_18__* @con_get_workspace(%struct.TYPE_18__*) #1

declare dso_local i64 @con_is_internal(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @con_descend_tiling_focused(%struct.TYPE_18__*) #1

declare dso_local i32 @con_detach(%struct.TYPE_18__*) #1

declare dso_local i32 @tree_close_internal(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @con_attach(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @con_fix_percent(%struct.TYPE_18__*) #1

declare dso_local i32 @insert_con_into(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @floating_set_hint_atom(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
