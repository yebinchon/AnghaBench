; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_setLabel.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_setLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@D_FMT = common dso_local global i32 0, align 4
@T_FMT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @setLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setLabel(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32* @selected(%struct.TYPE_5__* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @D_FMT, align 4
  %21 = call i8* @nl_langinfo(i32 %20)
  %22 = load i32, i32* @T_FMT, align 4
  %23 = call i8* @nl_langinfo(i32 %22)
  %24 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23)
  store i8* %24, i8** %4, align 8
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %6, align 8
  br label %38

26:                                               ; preds = %14, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @D_FMT, align 4
  %33 = call i8* @nl_langinfo(i32 %32)
  store i8* %33, i8** %4, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @T_FMT, align 4
  %36 = call i8* @nl_langinfo(i32 %35)
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @g_date_time_format(i32* %39, i8* %40)
  store i8* %41, i8** %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = call i32 @GTK_BUTTON(%struct.TYPE_5__* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @gtk_button_set_label(i32 %43, i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @g_free(i8* %46)
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @g_free(i8* %51)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @g_date_time_unref(i32* %54)
  ret void
}

declare dso_local i32* @selected(%struct.TYPE_5__*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i8* @g_date_time_format(i32*, i8*) #1

declare dso_local i32 @gtk_button_set_label(i32, i8*) #1

declare dso_local i32 @GTK_BUTTON(%struct.TYPE_5__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_date_time_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
