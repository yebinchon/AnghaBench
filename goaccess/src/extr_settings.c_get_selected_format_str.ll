; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_format_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_format_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@logs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_selected_format_str(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %35 [
    i64 132, label %5
    i64 129, label %8
    i64 133, label %11
    i64 130, label %14
    i64 128, label %17
    i64 135, label %20
    i64 134, label %23
    i64 137, label %26
    i64 131, label %29
    i64 136, label %32
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 9), align 4
  %7 = call i8* @alloc_string(i32 %6)
  store i8* %7, i8** %3, align 8
  br label %35

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 8), align 4
  %10 = call i8* @alloc_string(i32 %9)
  store i8* %10, i8** %3, align 8
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 7), align 4
  %13 = call i8* @alloc_string(i32 %12)
  store i8* %13, i8** %3, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 6), align 4
  %16 = call i8* @alloc_string(i32 %15)
  store i8* %16, i8** %3, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 5), align 4
  %19 = call i8* @alloc_string(i32 %18)
  store i8* %19, i8** %3, align 8
  br label %35

20:                                               ; preds = %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 4), align 4
  %22 = call i8* @alloc_string(i32 %21)
  store i8* %22, i8** %3, align 8
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 3), align 4
  %25 = call i8* @alloc_string(i32 %24)
  store i8* %25, i8** %3, align 8
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 2), align 4
  %28 = call i8* @alloc_string(i32 %27)
  store i8* %28, i8** %3, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 1), align 4
  %31 = call i8* @alloc_string(i32 %30)
  store i8* %31, i8** %3, align 8
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logs, i32 0, i32 0), align 4
  %34 = call i8* @alloc_string(i32 %33)
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %1, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i8* @alloc_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
