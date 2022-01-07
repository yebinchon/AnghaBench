; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_read_pci_cfg_host.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_read_pci_cfg_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, i8, i32, i32, i32, i32*)* @sun4u_read_pci_cfg_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_read_pci_cfg_host(%struct.pci_pbm_info* %0, i8 zeroext %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_pbm_info*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %20 = load i8, i8* %9, align 1
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32* @sun4u_config_mkaddr(%struct.pci_pbm_info* %19, i8 zeroext %20, i32 %21, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %27, i32* %7, align 4
  br label %102

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %100 [
    i32 1, label %30
    i32 2, label %59
    i32 4, label %81
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32*, i32** %15, align 8
  %35 = ptrtoint i32* %34 to i64
  store i64 %35, i64* %18, align 8
  %36 = load i64, i64* %18, align 8
  %37 = and i64 %36, -2
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %18, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @pci_config_read16(i32* %39, i32* %16)
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %16, align 4
  %46 = ashr i32 %45, 8
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load i32, i32* %16, align 4
  %50 = and i32 %49, 255
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %58

53:                                               ; preds = %30
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @pci_config_read8(i32* %54, i32* %17)
  %56 = load i32, i32* %17, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %52
  br label %100

59:                                               ; preds = %28
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @pci_config_read16(i32* %63, i32* %16)
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %80

67:                                               ; preds = %59
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @pci_config_read8(i32* %68, i32* %17)
  %70 = load i32, i32* %17, align 4
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @pci_config_read8(i32* %73, i32* %17)
  %75 = load i32, i32* %17, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %67, %62
  br label %100

81:                                               ; preds = %28
  store i32 -1, i32* %14, align 4
  %82 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %83 = load i8, i8* %9, align 1
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @sun4u_read_pci_cfg_host(%struct.pci_pbm_info* %82, i8 zeroext %83, i32 %84, i32 %85, i32 2, i32* %14)
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  store i32 -1, i32* %14, align 4
  %89 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %90 = load i8, i8* %9, align 1
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 2
  %94 = call i32 @sun4u_read_pci_cfg_host(%struct.pci_pbm_info* %89, i8 zeroext %90, i32 %91, i32 %93, i32 2, i32* %14)
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 16
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %28, %81, %80, %58
  %101 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %26
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32* @sun4u_config_mkaddr(%struct.pci_pbm_info*, i8 zeroext, i32, i32) #1

declare dso_local i32 @pci_config_read16(i32*, i32*) #1

declare dso_local i32 @pci_config_read8(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
