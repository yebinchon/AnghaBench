; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_set_power_saving_task_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_set_power_saving_task_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ps_tsk_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_power_saving_task_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_power_saving_task_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @ps_tsk_num, align 4
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %15, %6
  %8 = load i32, i32* @ps_tsk_num, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = call i64 (...) @create_power_saving_task()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %30

15:                                               ; preds = %11
  br label %7

16:                                               ; preds = %7
  br label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @ps_tsk_num, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* @ps_tsk_num, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @destroy_power_saving_task()
  br label %22

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %14, %29, %16
  ret void
}

declare dso_local i64 @create_power_saving_task(...) #1

declare dso_local i32 @destroy_power_saving_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
