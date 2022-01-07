; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-shmobile/extr_smp-sh73a0.c_sh73a0_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-shmobile/extr_smp-sh73a0.c_sh73a0_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PSTR = common dso_local global i32 0, align 4
@WUPCR = common dso_local global i32 0, align 4
@SRESCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @sh73a0_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh73a0_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpu_logical_map(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @PSTR, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 4, %10
  %12 = ashr i32 %9, %11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @WUPCR, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @SRESCR, align 4
  %24 = call i32 @__raw_writel(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  ret i32 0
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
