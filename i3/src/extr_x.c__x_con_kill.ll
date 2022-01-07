; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c__x_con_kill.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c__x_con_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@XCB_NONE = common dso_local global i64 0, align 8
@conn = common dso_local global i32 0, align 4
@state_head = common dso_local global i32 0, align 4
@old_state_head = common dso_local global i32 0, align 4
@old_state = common dso_local global %struct.TYPE_11__* null, align 8
@initial_mapping_head = common dso_local global i32 0, align 4
@initial_mapping_order = common dso_local global i32 0, align 4
@focused_id = common dso_local global i64 0, align 8
@last_focused = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @_x_con_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_x_con_kill(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XCB_NONE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @conn, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @xcb_free_colormap(i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @conn, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = call i32 @draw_util_surface_free(i32 %16, %struct.TYPE_13__* %18)
  %20 = load i32, i32* @conn, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = call i32 @draw_util_surface_free(i32 %20, %struct.TYPE_13__* %22)
  %24 = load i32, i32* @conn, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @xcb_free_pixmap(i32 %24, i64 %28)
  %30 = load i64, i64* @XCB_NONE, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.TYPE_11__* @state_for_frame(i64 %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %3, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i32 @CIRCLEQ_REMOVE(i32* @state_head, %struct.TYPE_11__* %39, %struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @old_state, align 8
  %44 = call i32 @CIRCLEQ_REMOVE(i32* @old_state_head, %struct.TYPE_11__* %42, %struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load i32, i32* @initial_mapping_order, align 4
  %47 = call i32 @TAILQ_REMOVE(i32* @initial_mapping_head, %struct.TYPE_11__* %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @FREE(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @free(%struct.TYPE_11__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @focused_id, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %15
  %61 = load i64, i64* @XCB_NONE, align 8
  store i64 %61, i64* @focused_id, align 8
  br label %62

62:                                               ; preds = %60, %15
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @last_focused, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @XCB_NONE, align 8
  store i64 %70, i64* @last_focused, align 8
  br label %71

71:                                               ; preds = %69, %62
  ret void
}

declare dso_local i32 @xcb_free_colormap(i32, i64) #1

declare dso_local i32 @draw_util_surface_free(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @xcb_free_pixmap(i32, i64) #1

declare dso_local %struct.TYPE_11__* @state_for_frame(i64) #1

declare dso_local i32 @CIRCLEQ_REMOVE(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
