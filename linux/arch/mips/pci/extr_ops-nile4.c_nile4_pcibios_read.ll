; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @nile4_pcibios_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nile4_pcibios_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %21, i32* %6, align 4
  br label %70

22:                                               ; preds = %16, %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %30, i32* %6, align 4
  br label %70

31:                                               ; preds = %25, %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @PCI_ACCESS_READ, align 4
  %34 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @nile4_pcibios_config_access(i32 %33, %struct.pci_bus* %34, i32 %35, i32 %36, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %48, 3
  %50 = ashr i32 %46, %49
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %68

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 3
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 65535
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %40, %29, %20
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @nile4_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
