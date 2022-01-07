; ModuleID = '/home/carl/AnghaBench/i3/src/extr_manage.c_remanage_window.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_manage.c_remanage_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }

@croot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Uh?! Container without a placeholder, but with a window, has swallowed this managed window?!\0A\00", align 1
@XCB_NONE = common dso_local global i64 0, align 8
@conn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @remanage_window(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load i32, i32* @croot, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = call %struct.TYPE_17__* @con_for_window(i32 %8, %struct.TYPE_18__* %11, i32** %4)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = icmp eq %struct.TYPE_18__* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = icmp eq %struct.TYPE_18__* %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20, %15, %1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = call i32 @run_assignments(%struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %2, align 8
  br label %109

34:                                               ; preds = %20
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = call i32 @run_assignments(%struct.TYPE_18__* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %2, align 8
  br label %109

52:                                               ; preds = %34
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @restore_kill_placeholder(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = call i32 @DLOG(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = call i32 @_remove_matches(%struct.TYPE_17__* %63)
  br label %65

65:                                               ; preds = %62, %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = call i32 @window_free(%struct.TYPE_18__* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = call i64 @_match_depth(%struct.TYPE_18__* %72, %struct.TYPE_17__* %73)
  store i64 %74, i64* %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = call i32 @x_reparent_child(%struct.TYPE_17__* %75, %struct.TYPE_17__* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = call i64 @con_get_workspace(%struct.TYPE_17__* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = call i64 @con_get_workspace(%struct.TYPE_17__* %80)
  %82 = icmp ne i64 %79, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = call i32 @con_merge_into(%struct.TYPE_17__* %84, %struct.TYPE_17__* %85)
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @XCB_NONE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %65
  %91 = load i32, i32* @conn, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @xcb_destroy_window(i32 %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %65
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = call i32 @run_assignments(%struct.TYPE_18__* %97)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = call i32 @startup_sequence_delete_by_window(%struct.TYPE_18__* %104)
  %106 = call i32 (...) @ewmh_update_wm_desktop()
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %2, align 8
  br label %109

109:                                              ; preds = %107, %46, %28
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %110
}

declare dso_local %struct.TYPE_17__* @con_for_window(i32, %struct.TYPE_18__*, i32**) #1

declare dso_local i32 @run_assignments(%struct.TYPE_18__*) #1

declare dso_local i32 @restore_kill_placeholder(i32) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @_remove_matches(%struct.TYPE_17__*) #1

declare dso_local i32 @window_free(%struct.TYPE_18__*) #1

declare dso_local i64 @_match_depth(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @x_reparent_child(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @con_get_workspace(%struct.TYPE_17__*) #1

declare dso_local i32 @con_merge_into(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @xcb_destroy_window(i32, i64) #1

declare dso_local i32 @startup_sequence_delete_by_window(%struct.TYPE_18__*) #1

declare dso_local i32 @ewmh_update_wm_desktop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
