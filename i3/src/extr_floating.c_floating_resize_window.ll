; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_floating_resize_window.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_floating_resize_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.resize_window_callback_params = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"floating_resize_window\0A\00", align 1
@BORDER_LEFT = common dso_local global i32 0, align 4
@BORDER_RIGHT = common dso_local global i32 0, align 4
@BORDER_TOP = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_TOP_LEFT_CORNER = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_TOP_RIGHT_CORNER = common dso_local global i32 0, align 4
@BORDER_BOTTOM = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_BOTTOM_LEFT_CORNER = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_BOTTOM_RIGHT_CORNER = common dso_local global i32 0, align 4
@XCB_NONE = common dso_local global i32 0, align 4
@resize_window_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"The container has been closed in the meantime.\0A\00", align 1
@DRAG_REVERT = common dso_local global i64 0, align 8
@SCRATCHPAD_FRESH = common dso_local global i64 0, align 8
@SCRATCHPAD_CHANGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floating_resize_window(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resize_window_callback_params, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = icmp sle i64 %15, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @BORDER_LEFT, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @BORDER_RIGHT, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %23
  store i32 0, i32* %8, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %34, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load i32, i32* @BORDER_TOP, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BORDER_LEFT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @XCURSOR_CURSOR_TOP_LEFT_CORNER, align 4
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @XCURSOR_CURSOR_TOP_RIGHT_CORNER, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %8, align 4
  br label %70

56:                                               ; preds = %31
  %57 = load i32, i32* @BORDER_BOTTOM, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @BORDER_LEFT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @XCURSOR_CURSOR_BOTTOM_LEFT_CORNER, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @XCURSOR_CURSOR_BOTTOM_RIGHT_CORNER, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %54
  %71 = getelementptr inbounds %struct.resize_window_callback_params, %struct.resize_window_callback_params* %9, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds %struct.resize_window_callback_params, %struct.resize_window_callback_params* %9, i32 0, i32 1
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = bitcast %struct.TYPE_12__* %10 to i8*
  %78 = bitcast %struct.TYPE_12__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* @XCB_NONE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @resize_window_callback, align 4
  %84 = call i64 @drag_pointer(%struct.TYPE_13__* %79, %struct.TYPE_11__* %80, i32 %81, i32 %82, i32 0, i32 %83, %struct.resize_window_callback_params* %9)
  store i64 %84, i64* %11, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i32 @con_exists(%struct.TYPE_13__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %70
  %89 = call i32 @DLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %109

90:                                               ; preds = %70
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @DRAG_REVERT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = bitcast %struct.TYPE_12__* %10 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = call i32 @floating_reposition(%struct.TYPE_13__* %95, i64 %97)
  br label %99

99:                                               ; preds = %94, %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SCRATCHPAD_FRESH, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i64, i64* @SCRATCHPAD_CHANGED, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %88, %105, %99
  ret void
}

declare dso_local i32 @DLOG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @drag_pointer(%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32, i32, i32, %struct.resize_window_callback_params*) #1

declare dso_local i32 @con_exists(%struct.TYPE_13__*) #1

declare dso_local i32 @floating_reposition(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
