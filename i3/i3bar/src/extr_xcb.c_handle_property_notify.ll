; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_handle_property_notify.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_handle_property_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"PropertyNotify\0A\00", align 1
@atoms = common dso_local global i64* null, align 8
@_XEMBED_INFO = common dso_local global i64 0, align 8
@XCB_PROPERTY_NEW_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"xembed_info updated\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"PropertyNotify received for unknown window %08x\0A\00", align 1
@xcb_connection = common dso_local global i32 0, align 4
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"xembed_info unset\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"xembed format = %d, len = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"xembed version = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"xembed flags = %d\0A\00", align 1
@XEMBED_MAPPED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"map state now %d\0A\00", align 1
@XCB_ATOM_WM_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @handle_property_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_property_notify(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** @atoms, align 8
  %14 = load i64, i64* @_XEMBED_INFO, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %119

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XCB_PROPERTY_NEW_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %119

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_12__* @trayclient_from_window(i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %3, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ELOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %137

37:                                               ; preds = %24
  %38 = load i32, i32* @xcb_connection, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64*, i64** @atoms, align 8
  %43 = load i64, i64* @_XEMBED_INFO, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %47 = call i32 @xcb_get_property_unchecked(i32 %38, i32 0, i32 %41, i64 %45, i32 %46, i32 0, i32 64)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @xcb_connection, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call %struct.TYPE_11__* @xcb_get_property_reply(i32 %48, i32 %49, i32* null)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %5, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = icmp eq %struct.TYPE_11__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %37
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %37
  %59 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %137

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %63, i64 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = call i32* @xcb_get_property_value(%struct.TYPE_11__* %68)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @XEMBED_MAPPED, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @XEMBED_MAPPED, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %60
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @xcb_connection, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @xcb_unmap_window(i32 %96, i32 %99)
  br label %116

101:                                              ; preds = %92, %60
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* @xcb_connection, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @xcb_map_window(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %106, %101
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = call i32 @free(%struct.TYPE_11__* %117)
  br label %137

119:                                              ; preds = %18, %1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @XCB_ATOM_WM_CLASS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_12__* @trayclient_from_window(i32 %128)
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %8, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = call i32 @trayclient_update_class(%struct.TYPE_12__* %133)
  br label %135

135:                                              ; preds = %132, %125
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %32, %58, %136, %116
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @trayclient_from_window(i32) #1

declare dso_local i32 @ELOG(i8*, i32) #1

declare dso_local i32 @xcb_get_property_unchecked(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @xcb_get_property_reply(i32, i32, i32*) #1

declare dso_local i32* @xcb_get_property_value(%struct.TYPE_11__*) #1

declare dso_local i32 @xcb_unmap_window(i32, i32) #1

declare dso_local i32 @xcb_map_window(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @trayclient_update_class(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
