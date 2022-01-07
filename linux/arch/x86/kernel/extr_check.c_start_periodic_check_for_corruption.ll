; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_check.c_start_periodic_check_for_corruption.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_check.c_start_periodic_check_for_corruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_scan_areas = common dso_local global i32 0, align 4
@memory_corruption_check = common dso_local global i32 0, align 4
@corruption_check_period = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Scanning for low memory corruption every %d seconds\0A\00", align 1
@bios_check_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_periodic_check_for_corruption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_periodic_check_for_corruption() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @num_scan_areas, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @memory_corruption_check, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* @corruption_check_period, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  store i32 0, i32* %1, align 4
  br label %15

11:                                               ; preds = %7
  %12 = load i64, i64* @corruption_check_period, align 8
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = call i32 @schedule_delayed_work(i32* @bios_check_work, i32 0)
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
