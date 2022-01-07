; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_get_preferred_window_type.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_get_preferred_window_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@XCB_NONE = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_NORMAL = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_DIALOG = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_UTILITY = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_TOOLBAR = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_SPLASH = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_MENU = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_DROPDOWN_MENU = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_POPUP_MENU = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_TOOLTIP = common dso_local global i64 0, align 8
@A__NET_WM_WINDOW_TYPE_NOTIFICATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xcb_get_preferred_window_type(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = call i32 @xcb_get_property_value_length(%struct.TYPE_5__* %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i64, i64* @XCB_NONE, align 8
  store i64 %13, i64* %2, align 8
  br label %123

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = call i64* @xcb_get_property_value(%struct.TYPE_5__* %15)
  store i64* %16, i64** %4, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @XCB_NONE, align 8
  store i64 %19, i64* %2, align 8
  br label %123

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %118, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @xcb_get_property_value_length(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = sdiv i32 %24, %28
  %30 = icmp slt i32 %22, %29
  br i1 %30, label %31, label %121

31:                                               ; preds = %21
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @A__NET_WM_WINDOW_TYPE_NORMAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %111, label %39

39:                                               ; preds = %31
  %40 = load i64*, i64** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @A__NET_WM_WINDOW_TYPE_DIALOG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %111, label %47

47:                                               ; preds = %39
  %48 = load i64*, i64** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @A__NET_WM_WINDOW_TYPE_UTILITY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %111, label %55

55:                                               ; preds = %47
  %56 = load i64*, i64** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @A__NET_WM_WINDOW_TYPE_TOOLBAR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %111, label %63

63:                                               ; preds = %55
  %64 = load i64*, i64** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @A__NET_WM_WINDOW_TYPE_SPLASH, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %111, label %71

71:                                               ; preds = %63
  %72 = load i64*, i64** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @A__NET_WM_WINDOW_TYPE_MENU, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %111, label %79

79:                                               ; preds = %71
  %80 = load i64*, i64** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @A__NET_WM_WINDOW_TYPE_DROPDOWN_MENU, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %111, label %87

87:                                               ; preds = %79
  %88 = load i64*, i64** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @A__NET_WM_WINDOW_TYPE_POPUP_MENU, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %111, label %95

95:                                               ; preds = %87
  %96 = load i64*, i64** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @A__NET_WM_WINDOW_TYPE_TOOLTIP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %95
  %104 = load i64*, i64** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @A__NET_WM_WINDOW_TYPE_NOTIFICATION, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103, %95, %87, %79, %71, %63, %55, %47, %39, %31
  %112 = load i64*, i64** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %2, align 8
  br label %123

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %21

121:                                              ; preds = %21
  %122 = load i64, i64* @XCB_NONE, align 8
  store i64 %122, i64* %2, align 8
  br label %123

123:                                              ; preds = %121, %111, %18, %12
  %124 = load i64, i64* %2, align 8
  ret i64 %124
}

declare dso_local i32 @xcb_get_property_value_length(%struct.TYPE_5__*) #1

declare dso_local i64* @xcb_get_property_value(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
