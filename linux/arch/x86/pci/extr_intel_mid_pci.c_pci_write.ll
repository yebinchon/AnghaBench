; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32, i32, i32)* }
%struct.pci_bus = type { i32 }

@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_5 = common dso_local global i32 0, align 4
@pci_direct_conf1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@raw_pci_ext_ops = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %73

17:                                               ; preds = %5
  %18 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fixed_bar_cap(%struct.pci_bus* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PCI_BASE_ADDRESS_5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @pci_device_update_fixed(%struct.pci_bus* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %73

39:                                               ; preds = %27, %23, %17
  %40 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %41 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @type1_access_ok(i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pci_direct_conf1, i32 0, i32 0), align 8
  %49 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %50 = call i32 @pci_domain_nr(%struct.pci_bus* %49)
  %51 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %52 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 %48(i32 %50, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %73

59:                                               ; preds = %39
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_pci_ext_ops, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %61, align 8
  %63 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %64 = call i32 @pci_domain_nr(%struct.pci_bus* %63)
  %65 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %66 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 %62(i32 %64, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %59, %47, %31, %16
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @fixed_bar_cap(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_device_update_fixed(%struct.pci_bus*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @type1_access_ok(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
