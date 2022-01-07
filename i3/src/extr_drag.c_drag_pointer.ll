; ModuleID = '/home/carl/AnghaBench/i3/src/extr_drag.c_drag_pointer.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_drag.c_drag_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.drag_x11_cb = type { i32, i8*, i32, i32, %struct.TYPE_16__, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.drag_x11_cb* }

@xcursor_supported = common dso_local global i64 0, align 8
@XCB_NONE = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_BUTTON_RELEASE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_POINTER_MOTION = common dso_local global i32 0, align 4
@XCB_GRAB_MODE_ASYNC = common dso_local global i32 0, align 4
@XCB_CURRENT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not grab pointer (error_code = %d)\0A\00", align 1
@DRAG_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not grab keyboard (error_code = %d)\0A\00", align 1
@DRAGGING = common dso_local global i32 0, align 4
@xcb_drag_prepare_cb = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drag_pointer(%struct.TYPE_17__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.drag_x11_cb, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i64, i64* @xcursor_supported, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @xcursor_get_cursor(i32 %30)
  br label %34

32:                                               ; preds = %26, %7
  %33 = load i32, i32* @XCB_NONE, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @conn, align 4
  %37 = load i32, i32* @root, align 4
  %38 = load i32, i32* @XCB_EVENT_MASK_BUTTON_RELEASE, align 4
  %39 = load i32, i32* @XCB_EVENT_MASK_POINTER_MOTION, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %42 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @XCB_NONE, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %16, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %53 = call i32 @xcb_grab_pointer(i32 %36, i32 0, i32 %37, i32 %40, i32 %41, i32 %42, i32 %43, i32 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @conn, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call %struct.TYPE_15__* @xcb_grab_pointer_reply(i32 %54, i32 %55, %struct.TYPE_15__** %19)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %18, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ELOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %64 = call i32 @free(%struct.TYPE_15__* %63)
  %65 = load i32, i32* @DRAG_ABORT, align 4
  store i32 %65, i32* %8, align 4
  br label %147

66:                                               ; preds = %50
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %68 = call i32 @free(%struct.TYPE_15__* %67)
  %69 = load i32, i32* @conn, align 4
  %70 = load i32, i32* @root, align 4
  %71 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %72 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %73 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %74 = call i32 @xcb_grab_keyboard(i32 %69, i32 0, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* @conn, align 4
  %76 = load i32, i32* %20, align 4
  %77 = call %struct.TYPE_15__* @xcb_grab_keyboard_reply(i32 %75, i32 %76, %struct.TYPE_15__** %19)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %21, align 8
  %78 = icmp eq %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %66
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ELOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %85 = call i32 @free(%struct.TYPE_15__* %84)
  %86 = load i32, i32* @conn, align 4
  %87 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %88 = call i32 @xcb_ungrab_pointer(i32 %86, i32 %87)
  %89 = load i32, i32* @DRAG_ABORT, align 4
  store i32 %89, i32* %8, align 4
  br label %147

90:                                               ; preds = %66
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %92 = call i32 @free(%struct.TYPE_15__* %91)
  %93 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 0
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 1
  %99 = load i8*, i8** %15, align 8
  store i8* %99, i8** %98, align 8
  %100 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 2
  %101 = load i32, i32* @DRAGGING, align 4
  store i32 %101, i32* %100, align 8
  %102 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 3
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 4
  %104 = bitcast %struct.TYPE_16__* %103 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %104, i8 0, i64 8, i1 false)
  %105 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 5
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %105, align 8
  %107 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 6
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 7
  %110 = load i32*, i32** %10, align 8
  store i32* %110, i32** %109, align 8
  %111 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 4
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %23, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = icmp ne %struct.TYPE_17__* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %90
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %90
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %123 = load i32, i32* @xcb_drag_prepare_cb, align 4
  %124 = call i32 @ev_prepare_init(%struct.TYPE_16__* %122, i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store %struct.drag_x11_cb* %22, %struct.drag_x11_cb** %126, align 8
  %127 = call i32 @main_set_x11_cb(i32 0)
  %128 = load i32, i32* @main_loop, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %130 = call i32 @ev_prepare_start(i32 %128, %struct.TYPE_16__* %129)
  %131 = load i32, i32* @main_loop, align 4
  %132 = call i32 @ev_loop(i32 %131, i32 0)
  %133 = load i32, i32* @main_loop, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %135 = call i32 @ev_prepare_stop(i32 %133, %struct.TYPE_16__* %134)
  %136 = call i32 @main_set_x11_cb(i32 1)
  %137 = load i32, i32* @conn, align 4
  %138 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %139 = call i32 @xcb_ungrab_keyboard(i32 %137, i32 %138)
  %140 = load i32, i32* @conn, align 4
  %141 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %142 = call i32 @xcb_ungrab_pointer(i32 %140, i32 %141)
  %143 = load i32, i32* @conn, align 4
  %144 = call i32 @xcb_flush(i32 %143)
  %145 = getelementptr inbounds %struct.drag_x11_cb, %struct.drag_x11_cb* %22, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %121, %79, %58
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @xcursor_get_cursor(i32) #1

declare dso_local i32 @xcb_grab_pointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @xcb_grab_pointer_reply(i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @ELOG(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local i32 @xcb_grab_keyboard(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @xcb_grab_keyboard_reply(i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @xcb_ungrab_pointer(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ev_prepare_init(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @main_set_x11_cb(i32) #1

declare dso_local i32 @ev_prepare_start(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ev_loop(i32, i32) #1

declare dso_local i32 @ev_prepare_stop(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @xcb_ungrab_keyboard(i32, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
