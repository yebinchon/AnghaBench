; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-actions/extr_platsmp.c_s500_smp_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-actions/extr_platsmp.c_s500_smp_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@timer_base_addr = common dso_local global i64 0, align 8
@OWL_CPU1_ADDR = common dso_local global i64 0, align 8
@OWL_CPU1_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @s500_smp_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s500_smp_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @s500_wakeup_secondary(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = call i32 @udelay(i32 10)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @smp_send_reschedule(i32 %15)
  %17 = load i64, i64* @timer_base_addr, align 8
  %18 = load i64, i64* @OWL_CPU1_ADDR, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %20, 1
  %22 = mul i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load i64, i64* @timer_base_addr, align 8
  %27 = load i64, i64* @OWL_CPU1_FLAG, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = sub i32 %29, 1
  %31 = mul i32 %30, 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %13, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @s500_wakeup_secondary(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smp_send_reschedule(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
