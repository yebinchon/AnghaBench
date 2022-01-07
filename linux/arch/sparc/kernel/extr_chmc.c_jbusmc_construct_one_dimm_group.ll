; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_construct_one_dimm_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_construct_one_dimm_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbusmc = type { i64, %struct.jbusmc_dimm_group* }
%struct.jbusmc_dimm_group = type { i64, i64, i32, %struct.jbusmc* }
%struct.linux_prom64_registers = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jbusmc*, i64, %struct.linux_prom64_registers*, i32)* @jbusmc_construct_one_dimm_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jbusmc_construct_one_dimm_group(%struct.jbusmc* %0, i64 %1, %struct.linux_prom64_registers* %2, i32 %3) #0 {
  %5 = alloca %struct.jbusmc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.linux_prom64_registers*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.jbusmc_dimm_group*, align 8
  store %struct.jbusmc* %0, %struct.jbusmc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.linux_prom64_registers* %2, %struct.linux_prom64_registers** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.jbusmc*, %struct.jbusmc** %5, align 8
  %11 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %10, i32 0, i32 1
  %12 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %12, i64 %13
  store %struct.jbusmc_dimm_group* %14, %struct.jbusmc_dimm_group** %9, align 8
  %15 = load %struct.jbusmc*, %struct.jbusmc** %5, align 8
  %16 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %17 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %16, i32 0, i32 3
  store %struct.jbusmc* %15, %struct.jbusmc** %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %20 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.jbusmc*, %struct.jbusmc** %5, align 8
  %22 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %23, 68719476736
  %25 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %26 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %27, 8589934592
  %29 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %30 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %34 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @jbusmc_dimm_group_size(i64 %35, %struct.linux_prom64_registers* %36, i32 %37)
  %39 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %9, align 8
  %40 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  ret void
}

declare dso_local i32 @jbusmc_dimm_group_size(i64, %struct.linux_prom64_registers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
