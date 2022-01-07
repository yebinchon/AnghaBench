; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_uiprivDateTimePickerWidget_setTime.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_uiprivDateTimePickerWidget_setTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @uiprivDateTimePickerWidget_setTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uiprivDateTimePickerWidget_setTime(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 11
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @g_date_time_get_ymd(i32* %14, i32* %5, i32* %6, i32* %7)
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @g_signal_handler_block(i32 %20, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GTK_CALENDAR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gtk_calendar_select_month(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GTK_CALENDAR(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gtk_calendar_select_day(i32 %35, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @g_signal_handler_unblock(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %13, %2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @g_date_time_get_hour(i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 12
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 12
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GTK_SPIN_BUTTON(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @setRealSpinValue(i32 %61, i32 1, i32 %64)
  br label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GTK_SPIN_BUTTON(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @setRealSpinValue(i32 %70, i32 %71, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @GTK_SPIN_BUTTON(i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @g_date_time_get_minute(i32* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @setRealSpinValue(i32 %79, i32 %81, i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @GTK_SPIN_BUTTON(i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @g_date_time_get_seconds(i32* %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @setRealSpinValue(i32 %89, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %66, %45
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @g_date_time_unref(i32* %97)
  ret void
}

declare dso_local i32 @g_date_time_get_ymd(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @g_signal_handler_block(i32, i32) #1

declare dso_local i32 @gtk_calendar_select_month(i32, i32, i32) #1

declare dso_local i32 @GTK_CALENDAR(i32) #1

declare dso_local i32 @gtk_calendar_select_day(i32, i32) #1

declare dso_local i32 @g_signal_handler_unblock(i32, i32) #1

declare dso_local i32 @g_date_time_get_hour(i32*) #1

declare dso_local i32 @setRealSpinValue(i32, i32, i32) #1

declare dso_local i32 @GTK_SPIN_BUTTON(i32) #1

declare dso_local i32 @g_date_time_get_minute(i32*) #1

declare dso_local i32 @g_date_time_get_seconds(i32*) #1

declare dso_local i32 @g_date_time_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
