; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_allocationToScreen.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_allocationToScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@GTK_TEXT_DIR_RTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64*, i64*)* @allocationToScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocationToScreen(%struct.TYPE_10__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @GTK_WIDGET(%struct.TYPE_10__* %13)
  %15 = call i32 @gtk_widget_get_allocation(i32 %14, %struct.TYPE_12__* %8)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gtk_widget_get_preferred_size(i32 %18, %struct.TYPE_11__* %9, i32* null)
  %20 = load i64*, i64** %5, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 @GTK_WIDGET(%struct.TYPE_10__* %22)
  %24 = call i32 @gtk_widget_get_has_window(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 @GTK_WIDGET(%struct.TYPE_10__* %34)
  %36 = call i32* @gtk_widget_get_window(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = call i32 @gdk_window_get_root_coords(i32* %37, i64 %39, i64 %41, i64* %42, i64* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @GTK_WIDGET(%struct.TYPE_10__* %45)
  %47 = call i64 @gtk_widget_get_direction(i32 %46)
  %48 = load i64, i64* @GTK_TEXT_DIR_RTL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %52, %54
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %50, %33
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @GTK_WIDGET(%struct.TYPE_10__* %60)
  %62 = call i32* @gtk_widget_get_screen(i32 %61)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @gdk_screen_get_monitor_at_window(i32* %64, i32* %65)
  %67 = call i32 @gdk_screen_get_monitor_workarea(i32* %63, i32 %66, %struct.TYPE_13__* %11)
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  br label %100

77:                                               ; preds = %59
  %78 = load i64*, i64** %5, align 8
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %84, %86
  %88 = icmp sgt i64 %82, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %91, %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %94, %96
  %98 = load i64*, i64** %5, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %77
  br label %100

100:                                              ; preds = %99, %73
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %102, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %120, %122
  %124 = icmp sge i64 %118, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %100
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %6, align 8
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %100
  ret void
}

declare dso_local i32 @gtk_widget_get_allocation(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @GTK_WIDGET(%struct.TYPE_10__*) #1

declare dso_local i32 @gtk_widget_get_preferred_size(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @gtk_widget_get_has_window(i32) #1

declare dso_local i32* @gtk_widget_get_window(i32) #1

declare dso_local i32 @gdk_window_get_root_coords(i32*, i64, i64, i64*, i64*) #1

declare dso_local i64 @gtk_widget_get_direction(i32) #1

declare dso_local i32* @gtk_widget_get_screen(i32) #1

declare dso_local i32 @gdk_screen_get_monitor_workarea(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @gdk_screen_get_monitor_at_window(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
