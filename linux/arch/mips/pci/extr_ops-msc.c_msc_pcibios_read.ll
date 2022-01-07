; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-msc.c_msc_pcibios_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-msc.c_msc_pcibios_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @msc_pcibios_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_pcibios_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
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
  br label %67

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
  br label %67

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @PCI_ACCESS_READ, align 4
  %33 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @msc_pcibios_config_access(i32 %32, %struct.pci_bus* %33, i32 %34, i32 %35, i32* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %67

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 3
  %46 = shl i32 %45, 3
  %47 = ashr i32 %43, %46
  %48 = and i32 %47, 255
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  br label %65

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 3
  %57 = shl i32 %56, 3
  %58 = ashr i32 %54, %57
  %59 = and i32 %58, 65535
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %38, %28, %19
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @msc_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
