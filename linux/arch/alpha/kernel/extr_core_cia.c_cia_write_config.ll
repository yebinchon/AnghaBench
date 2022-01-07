; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_cia.c_cia_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_cia.c_cia_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@CIA_CONF = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @cia_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cia_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @mk_conf_addr(%struct.pci_bus* %16, i32 %17, i32 %18, i64* %13, i8* %15)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %25, 8
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = shl i64 %28, 5
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* @CIA_CONF, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 3
  %38 = mul nsw i32 %37, 8
  %39 = shl i32 %35, %38
  %40 = load i8, i8* %15, align 1
  %41 = call i32 @conf_write(i64 %34, i32 %39, i8 zeroext %40)
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %23, %21
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*, i8*) #1

declare dso_local i32 @conf_write(i64, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
