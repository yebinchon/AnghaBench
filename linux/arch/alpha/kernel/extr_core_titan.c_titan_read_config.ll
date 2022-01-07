; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @titan_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @mk_conf_addr(%struct.pci_bus* %14, i32 %15, i32 %16, i64* %12, i8* %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %40 [
    i32 1, label %23
    i32 2, label %29
    i32 4, label %35
  ]

23:                                               ; preds = %21
  %24 = load i64, i64* %12, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__kernel_ldbu(i32 %26)
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load i64, i64* %12, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__kernel_ldwu(i32 %32)
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load i64, i64* %12, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %21, %35, %29, %23
  %41 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*, i8*) #1

declare dso_local i32 @__kernel_ldbu(i32) #1

declare dso_local i32 @__kernel_ldwu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
