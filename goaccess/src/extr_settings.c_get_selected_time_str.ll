; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_time_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_time_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@times = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_selected_time_str(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %14 [
    i64 137, label %5
    i64 135, label %5
    i64 133, label %5
    i64 132, label %5
    i64 130, label %5
    i64 129, label %5
    i64 128, label %5
    i64 136, label %5
    i64 134, label %8
    i64 131, label %11
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @times, i32 0, i32 2), align 4
  %7 = call i8* @alloc_string(i32 %6)
  store i8* %7, i8** %3, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @times, i32 0, i32 1), align 4
  %10 = call i8* @alloc_string(i32 %9)
  store i8* %10, i8** %3, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @times, i32 0, i32 0), align 4
  %13 = call i8* @alloc_string(i32 %12)
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %1, %11, %8, %5
  %15 = load i8*, i8** %3, align 8
  ret i8* %15
}

declare dso_local i8* @alloc_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
