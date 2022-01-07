; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra20_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra20_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @tegra20_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @cpu_logical_map(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @tegra_put_cpu_in_reset(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @flowctrl_write_cpu_halt(i32 %9, i32 0)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @tegra_enable_cpu_clock(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @flowctrl_write_cpu_csr(i32 %13, i32 0)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @tegra_cpu_out_of_reset(i32 %15)
  ret i32 0
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @tegra_put_cpu_in_reset(i32) #1

declare dso_local i32 @flowctrl_write_cpu_halt(i32, i32) #1

declare dso_local i32 @tegra_enable_cpu_clock(i32) #1

declare dso_local i32 @flowctrl_write_cpu_csr(i32, i32) #1

declare dso_local i32 @tegra_cpu_out_of_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
