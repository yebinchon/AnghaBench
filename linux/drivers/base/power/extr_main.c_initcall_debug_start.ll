; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_initcall_debug_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_initcall_debug_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@pm_print_times_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"calling %pS @ %i, parent: %s\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @initcall_debug_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initcall_debug_start(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @pm_print_times_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @task_pid_nr(i32 %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @dev_name(i64 %21)
  br label %24

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i8* [ %22, %18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = call i32 @dev_info(%struct.device* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13, i8* %25)
  %27 = call i32 (...) @ktime_get()
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i8* @dev_name(i64) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
