; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-bcm1480ht.c_bcm1480ht_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-bcm1480ht.c_bcm1480ht_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @bcm1480ht_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm1480ht_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @CFGADDR(%struct.pci_bus* %14, i32 %15, i32 %16)
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %25, i32* %6, align 4
  br label %87

26:                                               ; preds = %20, %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %34, i32* %6, align 4
  br label %87

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bcm1480ht_can_access(%struct.pci_bus* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %42, i32* %6, align 4
  br label %87

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @READCFG32(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 3
  %52 = shl i32 %51, 3
  %53 = shl i32 255, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %49, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 3
  %59 = shl i32 %58, 3
  %60 = shl i32 %56, %59
  %61 = or i32 %55, %60
  store i32 %61, i32* %13, align 4
  br label %82

62:                                               ; preds = %43
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 3
  %69 = shl i32 %68, 3
  %70 = shl i32 65535, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %66, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 3
  %76 = shl i32 %75, 3
  %77 = shl i32 %73, %76
  %78 = or i32 %72, %77
  store i32 %78, i32* %13, align 4
  br label %81

79:                                               ; preds = %62
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %65
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @WRITECFG32(i32 %83, i32 %84)
  %86 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %41, %33, %24
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @CFGADDR(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @bcm1480ht_can_access(%struct.pci_bus*, i32) #1

declare dso_local i32 @READCFG32(i32) #1

declare dso_local i32 @WRITECFG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
