; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_direct_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_direct_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.pci_controller*, i32, i32)* }
%struct.pci_controller = type { i32 }
%struct.pci_bus = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi108_direct_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %14)
  store %struct.pci_controller* %15, %struct.pci_controller** %13, align 8
  %16 = load i64 (%struct.pci_controller*, i32, i32)*, i64 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %17 = icmp ne i64 (%struct.pci_controller*, i32, i32)* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load i64 (%struct.pci_controller*, i32, i32)*, i64 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %20 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 %19(%struct.pci_controller* %20, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %28, i32* %6, align 4
  br label %60

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @tsi_mk_config_addr(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 3
  %39 = or i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %12, align 8
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %53 [
    i32 1, label %43
    i32 2, label %48
  ]

43:                                               ; preds = %30
  %44 = load i8*, i8** %12, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @out_8(i32* %45, i32 %46)
  br label %58

48:                                               ; preds = %30
  %49 = load i8*, i8** %12, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @out_le16(i32* %50, i32 %51)
  br label %58

53:                                               ; preds = %30
  %54 = load i8*, i8** %12, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @out_le32(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48, %43
  %59 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %27
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @tsi_mk_config_addr(i32, i32, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @out_le16(i32*, i32) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
