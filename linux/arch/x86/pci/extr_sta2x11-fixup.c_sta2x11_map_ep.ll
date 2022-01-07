; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_map_ep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_map_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sta2x11_mapping = type { i64 }

@STA2X11_AMBA_SIZE = common dso_local global i32 0, align 4
@AHB_CRW_WTYPE_MEM = common dso_local global i32 0, align 4
@AHB_CRW_ENABLE = common dso_local global i32 0, align 4
@STA2X11_NR_FUNCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sta2x11: Map EP %i: AMBA address %#8x-%#8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sta2x11_map_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta2x11_map_ep(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sta2x11_mapping*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.sta2x11_mapping* @sta2x11_pdev_to_mapping(%struct.pci_dev* %5)
  store %struct.sta2x11_mapping* %6, %struct.sta2x11_mapping** %3, align 8
  %7 = load %struct.sta2x11_mapping*, %struct.sta2x11_mapping** %3, align 8
  %8 = icmp ne %struct.sta2x11_mapping* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @AHB_BASE(i32 0)
  %13 = load %struct.sta2x11_mapping*, %struct.sta2x11_mapping** %3, align 8
  %14 = getelementptr inbounds %struct.sta2x11_mapping, %struct.sta2x11_mapping* %13, i32 0, i32 0
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %12, i64* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 @AHB_PEXLBASE(i32 0)
  %18 = call i32 @pci_write_config_dword(%struct.pci_dev* %16, i32 %17, i32 0)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @AHB_PEXHBASE(i32 0)
  %21 = call i32 @pci_write_config_dword(%struct.pci_dev* %19, i32 %20, i32 0)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @AHB_CRW(i32 0)
  %24 = load i32, i32* @STA2X11_AMBA_SIZE, align 4
  %25 = load i32, i32* @AHB_CRW_WTYPE_MEM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AHB_CRW_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pci_write_config_dword(%struct.pci_dev* %22, i32 %23, i32 %28)
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %39, %10
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @STA2X11_NR_FUNCS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @AHB_CRW(i32 %36)
  %38 = call i32 @pci_write_config_dword(%struct.pci_dev* %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @sta2x11_pdev_to_ep(%struct.pci_dev* %45)
  %47 = load %struct.sta2x11_mapping*, %struct.sta2x11_mapping** %3, align 8
  %48 = getelementptr inbounds %struct.sta2x11_mapping, %struct.sta2x11_mapping* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sta2x11_mapping*, %struct.sta2x11_mapping** %3, align 8
  %51 = getelementptr inbounds %struct.sta2x11_mapping, %struct.sta2x11_mapping* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @STA2X11_AMBA_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %49, i64 %56)
  br label %58

58:                                               ; preds = %42, %9
  ret void
}

declare dso_local %struct.sta2x11_mapping* @sta2x11_pdev_to_mapping(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @AHB_BASE(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @AHB_PEXLBASE(i32) #1

declare dso_local i32 @AHB_PEXHBASE(i32) #1

declare dso_local i32 @AHB_CRW(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @sta2x11_pdev_to_ep(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
