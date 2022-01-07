; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_read_pci_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_read_pci_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8, %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pci_read_config_word: misaligned reg [%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pci_read_config_dword: misaligned reg [%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sun4u_read_pci_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_read_pci_cfg(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_pbm_info*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 1
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %18, align 8
  store %struct.pci_pbm_info* %19, %struct.pci_pbm_info** %12, align 8
  %20 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  store i8 %22, i8* %13, align 1
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %30 [
    i32 1, label %24
    i32 2, label %26
    i32 4, label %28
  ]

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  store i32 255, i32* %25, align 4
  br label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  store i32 65535, i32* %27, align 4
  br label %30

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %5, %28, %26, %24
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @PCI_SLOT(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %12, align 8
  %41 = load i8, i8* %13, align 1
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @sun4u_read_pci_cfg_host(%struct.pci_pbm_info* %40, i8 zeroext %41, i32 %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %91

47:                                               ; preds = %35, %30
  %48 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %12, align 8
  %49 = load i8, i8* %13, align 1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32* @sun4u_config_mkaddr(%struct.pci_pbm_info* %48, i8 zeroext %49, i32 %50, i32 %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %56, i32* %6, align 4
  br label %91

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %89 [
    i32 1, label %59
    i32 2, label %64
    i32 4, label %77
  ]

59:                                               ; preds = %57
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @pci_config_read8(i32* %60, i32* %16)
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %89

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %71, i32* %6, align 4
  br label %91

72:                                               ; preds = %64
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @pci_config_read16(i32* %73, i32* %15)
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %89

77:                                               ; preds = %57
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %84, i32* %6, align 4
  br label %91

85:                                               ; preds = %77
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @pci_config_read32(i32* %86, i32* %87)
  br label %89

89:                                               ; preds = %57, %85, %72, %59
  %90 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %81, %68, %55, %39
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @sun4u_read_pci_cfg_host(%struct.pci_pbm_info*, i8 zeroext, i32, i32, i32, i32*) #1

declare dso_local i32* @sun4u_config_mkaddr(%struct.pci_pbm_info*, i8 zeroext, i32, i32) #1

declare dso_local i32 @pci_config_read8(i32*, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @pci_config_read16(i32*, i32*) #1

declare dso_local i32 @pci_config_read32(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
