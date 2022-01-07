; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_x_con_init.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_x_con_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.con_state = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32, i8* }
%struct.TYPE_10__ = type { i32 }

@root_depth = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@XCB_COLORMAP_ALLOC_NONE = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@colormap = common dso_local global i8* null, align 8
@XCB_NONE = common dso_local global i8* null, align 8
@XCB_CW_BACK_PIXEL = common dso_local global i32 0, align 4
@root_screen = common dso_local global %struct.TYPE_9__* null, align 8
@XCB_CW_BORDER_PIXEL = common dso_local global i32 0, align 4
@XCB_CW_OVERRIDE_REDIRECT = common dso_local global i32 0, align 4
@XCB_CW_EVENT_MASK = common dso_local global i32 0, align 4
@FRAME_EVENT_MASK = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_ENTER_WINDOW = common dso_local global i32 0, align 4
@XCB_CW_COLORMAP = common dso_local global i32 0, align 4
@__const.x_con_init.dims = private unnamed_addr constant %struct.TYPE_7__ { i32 -15, i32 -15, i32 10, i32 10, i32 0, i32 0 }, align 4
@XCB_WINDOW_CLASS_INPUT_OUTPUT = common dso_local global i32 0, align 4
@XCURSOR_CURSOR_POINTER = common dso_local global i32 0, align 4
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@XCB_ATOM_WM_CLASS = common dso_local global i32 0, align 4
@XCB_ATOM_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"i3-frame\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"i3-frame\00i3-frame\00\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Adding window 0x%08x to lists\0A\00", align 1
@state_head = common dso_local global i32 0, align 4
@old_state_head = common dso_local global i32 0, align 4
@old_state = common dso_local global %struct.con_state* null, align 8
@initial_mapping_head = common dso_local global i32 0, align 4
@initial_mapping_order = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"adding new state for window id 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_con_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.con_state*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_visualid_by_depth(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @root_depth, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @conn, align 4
  %21 = call i8* @xcb_generate_id(i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* @conn, align 4
  %23 = load i32, i32* @XCB_COLORMAP_ALLOC_NONE, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @root, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @xcb_create_colormap(i32 %22, i32 %23, i8* %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %36

31:                                               ; preds = %1
  %32 = load i8*, i8** @colormap, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** @XCB_NONE, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %31, %19
  %37 = load i32, i32* @XCB_CW_BACK_PIXEL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root_screen, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* @XCB_CW_BORDER_PIXEL, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root_screen, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @XCB_CW_OVERRIDE_REDIRECT, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @XCB_CW_EVENT_MASK, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @FRAME_EVENT_MASK, align 4
  %59 = load i32, i32* @XCB_EVENT_MASK_ENTER_WINDOW, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @XCB_CW_COLORMAP, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  store i32 %67, i32* %68, align 16
  %69 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast (%struct.TYPE_7__* @__const.x_con_init.dims to i8*), i64 24, i1 false)
  %70 = load i32, i32* @conn, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @XCB_WINDOW_CLASS_INPUT_OUTPUT, align 4
  %76 = load i32, i32* @XCURSOR_CURSOR_POINTER, align 4
  %77 = load i32, i32* %3, align 4
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %79 = call i32 @create_window(i32 %70, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %7, i32 %73, i32 %74, i32 %75, i32 %76, i32 0, i32 %77, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @conn, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @get_visualtype_by_id(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @draw_util_surface_init(i32 %80, %struct.TYPE_10__* %82, i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = load i32, i32* @conn, align 4
  %92 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @XCB_ATOM_WM_CLASS, align 4
  %98 = load i32, i32* @XCB_ATOM_STRING, align 4
  %99 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %100 = add nsw i32 %99, 1
  %101 = mul nsw i32 %100, 2
  %102 = call i32 @xcb_change_property(i32 %91, i32 %92, i32 %96, i32 %97, i32 %98, i32 8, i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %103 = call %struct.con_state* @scalloc(i32 1, i32 12)
  store %struct.con_state* %103, %struct.con_state** %9, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.con_state*, %struct.con_state** %9, align 8
  %109 = getelementptr inbounds %struct.con_state, %struct.con_state* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.con_state*, %struct.con_state** %9, align 8
  %111 = getelementptr inbounds %struct.con_state, %struct.con_state* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load %struct.con_state*, %struct.con_state** %9, align 8
  %113 = getelementptr inbounds %struct.con_state, %struct.con_state* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.con_state*, %struct.con_state** %9, align 8
  %115 = getelementptr inbounds %struct.con_state, %struct.con_state* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @DLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.con_state*, %struct.con_state** %9, align 8
  %119 = load %struct.con_state*, %struct.con_state** %9, align 8
  %120 = call i32 @CIRCLEQ_INSERT_HEAD(i32* @state_head, %struct.con_state* %118, %struct.con_state* %119)
  %121 = load %struct.con_state*, %struct.con_state** %9, align 8
  %122 = load %struct.con_state*, %struct.con_state** @old_state, align 8
  %123 = call i32 @CIRCLEQ_INSERT_HEAD(i32* @old_state_head, %struct.con_state* %121, %struct.con_state* %122)
  %124 = load %struct.con_state*, %struct.con_state** %9, align 8
  %125 = load i32, i32* @initial_mapping_order, align 4
  %126 = call i32 @TAILQ_INSERT_TAIL(i32* @initial_mapping_head, %struct.con_state* %124, i32 %125)
  %127 = load %struct.con_state*, %struct.con_state** %9, align 8
  %128 = getelementptr inbounds %struct.con_state, %struct.con_state* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @DLOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  ret void
}

declare dso_local i32 @get_visualid_by_depth(i32) #1

declare dso_local i8* @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_colormap(i32, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @create_window(i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @draw_util_surface_init(i32, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @get_visualtype_by_id(i32) #1

declare dso_local i32 @xcb_change_property(i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.con_state* @scalloc(i32, i32) #1

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @CIRCLEQ_INSERT_HEAD(i32*, %struct.con_state*, %struct.con_state*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.con_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
