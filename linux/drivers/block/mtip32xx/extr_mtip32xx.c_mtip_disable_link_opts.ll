; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_disable_link_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_disable_link_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Disabling ERO/No-Snoop on bridge device %04x:%04x\0A\00", align 1
@PCI_EXP_DEVCTL_NOSNOOP_EN = common dso_local global i16 0, align 2
@PCI_EXP_DEVCTL_RELAX_EN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, %struct.pci_dev*)* @mtip_disable_link_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_disable_link_opts(%struct.driver_data* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %9 = call i32 @pci_find_capability(%struct.pci_dev* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i64 %17, i16* %6)
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 2048
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23, %12
  %29 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %30 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i16, i16* @PCI_EXP_DEVCTL_NOSNOOP_EN, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @PCI_EXP_DEVCTL_RELAX_EN, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %6, align 2
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i16, i16* %6, align 2
  %56 = call i32 @pci_write_config_word(%struct.pci_dev* %50, i64 %54, i16 zeroext %55)
  br label %57

57:                                               ; preds = %28, %23
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i16*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
