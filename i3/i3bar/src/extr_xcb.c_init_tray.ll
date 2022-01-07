; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_tray.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"Initializing system tray functionality\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"_NET_SYSTEM_TRAY_S\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"_NET_SYSTEM_TRAY_S%d\00", align 1
@screen = common dso_local global i32 0, align 4
@tray_reply = common dso_local global %struct.TYPE_9__* null, align 8
@xcb_connection = common dso_local global i32 0, align 4
@selwin = common dso_local global i64 0, align 8
@XCB_CW_BACK_PIXEL = common dso_local global i32 0, align 4
@XCB_CW_BORDER_PIXEL = common dso_local global i32 0, align 4
@XCB_CW_OVERRIDE_REDIRECT = common dso_local global i32 0, align 4
@XCB_CW_COLORMAP = common dso_local global i32 0, align 4
@root_screen = common dso_local global %struct.TYPE_11__* null, align 8
@colormap = common dso_local global i32 0, align 4
@depth = common dso_local global i32 0, align 4
@xcb_root = common dso_local global i32 0, align 4
@XCB_WINDOW_CLASS_INPUT_OUTPUT = common dso_local global i32 0, align 4
@visual_type = common dso_local global %struct.TYPE_10__* null, align 8
@_NET_SYSTEM_TRAY_ORIENTATION_HORZ = common dso_local global i32 0, align 4
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@atoms = common dso_local global i32* null, align 8
@_NET_SYSTEM_TRAY_ORIENTATION = common dso_local global i64 0, align 8
@XCB_ATOM_CARDINAL = common dso_local global i32 0, align 4
@_NET_SYSTEM_TRAY_VISUAL = common dso_local global i64 0, align 8
@XCB_ATOM_VISUALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not get atom %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@XCB_CURRENT_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not get selection owner for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Could not set the %s selection. Maybe another tray is already running?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_tray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tray() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = call i32 @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = add nsw i32 %11, 11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = add nsw i32 %16, 11
  %18 = load i32, i32* @screen, align 4
  %19 = call i32 @snprintf(i8* %15, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tray_reply, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i32, i32* @xcb_connection, align 4
  %24 = call i32 @strlen(i8* %15)
  %25 = call i32 @xcb_intern_atom(i32 %23, i32 0, i32 %24, i8* %15)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %0
  %27 = load i32, i32* @xcb_connection, align 4
  %28 = call i64 @xcb_generate_id(i32 %27)
  store i64 %28, i64* @selwin, align 8
  %29 = load i32, i32* @XCB_CW_BACK_PIXEL, align 4
  %30 = load i32, i32* @XCB_CW_BORDER_PIXEL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @XCB_CW_OVERRIDE_REDIRECT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @XCB_CW_COLORMAP, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @root_screen, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @root_screen, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* @colormap, align 4
  store i32 %46, i32* %45, align 4
  %47 = load i32, i32* @xcb_connection, align 4
  %48 = load i32, i32* @depth, align 4
  %49 = load i64, i64* @selwin, align 8
  %50 = load i32, i32* @xcb_root, align 4
  %51 = load i32, i32* @XCB_WINDOW_CLASS_INPUT_OUTPUT, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @visual_type, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %57 = call i32 @xcb_create_window(i32 %47, i32 %48, i64 %49, i32 %50, i32 -1, i32 -1, i32 1, i32 1, i32 0, i32 %51, i32 %54, i32 %55, i32* %56)
  %58 = load i32, i32* @_NET_SYSTEM_TRAY_ORIENTATION_HORZ, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @xcb_connection, align 4
  %60 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %61 = load i64, i64* @selwin, align 8
  %62 = load i32*, i32** @atoms, align 8
  %63 = load i64, i64* @_NET_SYSTEM_TRAY_ORIENTATION, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XCB_ATOM_CARDINAL, align 4
  %67 = call i32 @xcb_change_property(i32 %59, i32 %60, i64 %61, i32 %65, i32 %66, i32 32, i32 1, i32* %6)
  %68 = load i32, i32* @xcb_connection, align 4
  %69 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %70 = load i64, i64* @selwin, align 8
  %71 = load i32*, i32** @atoms, align 8
  %72 = load i64, i64* @_NET_SYSTEM_TRAY_VISUAL, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XCB_ATOM_VISUALID, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @visual_type, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @xcb_change_property(i32 %68, i32 %69, i64 %70, i32 %74, i32 %75, i32 32, i32 1, i32* %77)
  %79 = call i32 (...) @init_tray_colors()
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tray_reply, align 8
  %81 = icmp eq %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %26
  %83 = load i32, i32* @xcb_connection, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call %struct.TYPE_9__* @xcb_intern_atom_reply(i32 %83, i32 %84, i32* null)
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** @tray_reply, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = call i32 @ELOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @exit(i32 %89) #4
  unreachable

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %26
  %93 = load i32, i32* @xcb_connection, align 4
  %94 = load i64, i64* @selwin, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tray_reply, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %99 = call i32 @xcb_set_selection_owner(i32 %93, i64 %94, i32 %97, i32 %98)
  %100 = load i32, i32* @xcb_connection, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tray_reply, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @xcb_get_selection_owner(i32 %100, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @xcb_connection, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call %struct.TYPE_8__* @xcb_get_selection_owner_reply(i32 %105, i32 %106, i32* null)
  store %struct.TYPE_8__* %107, %struct.TYPE_8__** %8, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %92
  %110 = call i32 @ELOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %111 = load i32, i32* @EXIT_FAILURE, align 4
  %112 = call i32 @exit(i32 %111) #4
  unreachable

113:                                              ; preds = %92
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @selwin, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = call i32 @ELOG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i8* %15)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = call i32 @free(%struct.TYPE_8__* %121)
  store i32 1, i32* %9, align 4
  br label %127

123:                                              ; preds = %113
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = call i32 @free(%struct.TYPE_8__* %124)
  %126 = call i32 (...) @send_tray_clientmessage()
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %9, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xcb_intern_atom(i32, i32, i32, i8*) #1

declare dso_local i64 @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_window(i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xcb_change_property(i32, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @init_tray_colors(...) #1

declare dso_local %struct.TYPE_9__* @xcb_intern_atom_reply(i32, i32, i32*) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @xcb_set_selection_owner(i32, i64, i32, i32) #1

declare dso_local i32 @xcb_get_selection_owner(i32, i32) #1

declare dso_local %struct.TYPE_8__* @xcb_get_selection_owner_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @send_tray_clientmessage(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
