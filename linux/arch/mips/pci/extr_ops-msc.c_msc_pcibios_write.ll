; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-msc.c_msc_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-msc.c_msc_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @msc_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %20, i32* %6, align 4
  br label %90

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %29, i32* %6, align 4
  br label %90

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %12, align 4
  br label %80

36:                                               ; preds = %31
  %37 = load i32, i32* @PCI_ACCESS_READ, align 4
  %38 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @msc_pcibios_config_access(i32 %37, %struct.pci_bus* %38, i32 %39, i32 %40, i32* %12)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %90

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 3
  %51 = shl i32 %50, 3
  %52 = shl i32 255, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %48, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 3
  %58 = shl i32 %57, 3
  %59 = shl i32 %55, %58
  %60 = or i32 %54, %59
  store i32 %60, i32* %12, align 4
  br label %79

61:                                               ; preds = %44
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 3
  %68 = shl i32 %67, 3
  %69 = shl i32 65535, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %65, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 3
  %75 = shl i32 %74, 3
  %76 = shl i32 %72, %75
  %77 = or i32 %71, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %64, %61
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %82 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @msc_pcibios_config_access(i32 %81, %struct.pci_bus* %82, i32 %83, i32 %84, i32* %12)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %87, %43, %28, %19
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @msc_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
