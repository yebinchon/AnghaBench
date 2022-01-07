; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_write_pci_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_write_pci_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8, %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pci_write_config_word: misaligned reg [%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"pci_write_config_dword: misaligned reg [%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @sun4u_write_pci_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_write_pci_cfg(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_pbm_info*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 1
  %17 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %16, align 8
  store %struct.pci_pbm_info* %17, %struct.pci_pbm_info** %12, align 8
  %18 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  store i8 %20, i8* %13, align 1
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PCI_SLOT(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %12, align 8
  %31 = load i8, i8* %13, align 1
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @sun4u_write_pci_cfg_host(%struct.pci_pbm_info* %30, i8 zeroext %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %79

37:                                               ; preds = %25, %5
  %38 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %12, align 8
  %39 = load i8, i8* %13, align 1
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32* @sun4u_config_mkaddr(%struct.pci_pbm_info* %38, i8 zeroext %39, i32 %40, i32 %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %46, i32* %6, align 4
  br label %79

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %77 [
    i32 1, label %49
    i32 2, label %53
    i32 4, label %65
  ]

49:                                               ; preds = %47
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @pci_config_write8(i32* %50, i32 %51)
  br label %77

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %60, i32* %6, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @pci_config_write16(i32* %62, i32 %63)
  br label %77

65:                                               ; preds = %47
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %72, i32* %6, align 4
  br label %79

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @pci_config_write32(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %47, %61, %49
  %78 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %69, %57, %45, %29
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @sun4u_write_pci_cfg_host(%struct.pci_pbm_info*, i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32* @sun4u_config_mkaddr(%struct.pci_pbm_info*, i8 zeroext, i32, i32) #1

declare dso_local i32 @pci_config_write8(i32*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @pci_config_write16(i32*, i32) #1

declare dso_local i32 @pci_config_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
