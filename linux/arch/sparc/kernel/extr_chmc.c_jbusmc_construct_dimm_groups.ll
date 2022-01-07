; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_construct_dimm_groups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_construct_dimm_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbusmc = type { i32, i32 }
%struct.linux_prom64_registers = type { i32 }

@JB_MC_REG1_DIMM1_BANK0 = common dso_local global i32 0, align 4
@JB_MC_REG1_DIMM2_BANK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jbusmc*, %struct.linux_prom64_registers*, i32)* @jbusmc_construct_dimm_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jbusmc_construct_dimm_groups(%struct.jbusmc* %0, %struct.linux_prom64_registers* %1, i32 %2) #0 {
  %4 = alloca %struct.jbusmc*, align 8
  %5 = alloca %struct.linux_prom64_registers*, align 8
  %6 = alloca i32, align 4
  store %struct.jbusmc* %0, %struct.jbusmc** %4, align 8
  store %struct.linux_prom64_registers* %1, %struct.linux_prom64_registers** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %8 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @JB_MC_REG1_DIMM1_BANK0, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %15 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @jbusmc_construct_one_dimm_group(%struct.jbusmc* %14, i32 0, %struct.linux_prom64_registers* %15, i32 %16)
  %18 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %19 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %24 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @JB_MC_REG1_DIMM2_BANK2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %31 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @jbusmc_construct_one_dimm_group(%struct.jbusmc* %30, i32 1, %struct.linux_prom64_registers* %31, i32 %32)
  %34 = load %struct.jbusmc*, %struct.jbusmc** %4, align 8
  %35 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @jbusmc_construct_one_dimm_group(%struct.jbusmc*, i32, %struct.linux_prom64_registers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
