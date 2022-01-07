; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_nlm_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_nlm_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @nlm_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  br label %79

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
  br label %79

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pci_cfg_read_32bit(%struct.pci_bus* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 3
  %42 = shl i32 %41, 3
  %43 = shl i32 255, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %39, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %48, 3
  %50 = shl i32 %46, %49
  %51 = or i32 %45, %50
  store i32 %51, i32* %12, align 4
  br label %72

52:                                               ; preds = %31
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 3
  %59 = shl i32 %58, 3
  %60 = shl i32 65535, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %56, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 3
  %66 = shl i32 %65, 3
  %67 = shl i32 %63, %66
  %68 = or i32 %62, %67
  store i32 %68, i32* %12, align 4
  br label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %55
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @pci_cfg_write_32bit(%struct.pci_bus* %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %28, %19
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @pci_cfg_read_32bit(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @pci_cfg_write_32bit(%struct.pci_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
