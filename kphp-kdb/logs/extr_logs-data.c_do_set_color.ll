; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_do_set_color.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_do_set_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_logs_set_color = type { i64, i32, i32, i32 }

@FN = common dso_local global i32 0, align 4
@MAX_COLOR_CNT = common dso_local global i32 0, align 4
@LEV_LOGS_SET_COLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_color(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_logs_set_color*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FN, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MAX_COLOR_CNT, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19, %15, %5
  store i32 0, i32* %6, align 4
  br label %47

27:                                               ; preds = %22
  %28 = load i64, i64* @LEV_LOGS_SET_COLOR, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call %struct.lev_logs_set_color* @alloc_log_event(i64 %31, i32 24, i32 0)
  store %struct.lev_logs_set_color* %32, %struct.lev_logs_set_color** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %12, align 8
  %35 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %12, align 8
  %38 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %12, align 8
  %41 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %12, align 8
  %44 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %12, align 8
  %46 = call i32 @set_color(%struct.lev_logs_set_color* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %27, %26
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.lev_logs_set_color* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_color(%struct.lev_logs_set_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
