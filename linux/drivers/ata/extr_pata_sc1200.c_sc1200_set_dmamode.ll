; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sc1200.c_sc1200_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sc1200.c_sc1200_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@sc1200_set_dmamode.udma_timing = internal constant [3 x [3 x i32]] [[3 x i32] [i32 9572944, i32 9507136, i32 9506864], [3 x i32] [i32 9643120, i32 9577056, i32 9576768], [3 x i32] [i32 9713313, i32 9647233, i32 9581153]], align 16
@sc1200_set_dmamode.mwdma_timing = internal constant [3 x [3 x i32]] [[3 x i32] [i32 489329, i32 74017, i32 8224], [3 x i32] [i32 768946, i32 148033, i32 78129], [3 x i32] [i32 1048563, i32 217938, i32 86353]], align 16
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sc1200_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = call i32 (...) @sc1200_clock()
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 16, %20
  %22 = add nsw i32 64, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @XFER_UDMA_0, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @sc1200_set_dmamode.udma_timing, i64 0, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @XFER_UDMA_0, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %32, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %49

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @sc1200_set_dmamode.mwdma_timing, i64 0, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @XFER_MW_DMA_0, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %42, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %39, %29
  %50 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 4
  %58 = call i32 @pci_read_config_dword(%struct.pci_dev* %55, i32 %57, i32* %10)
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, 2147483648
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pci_write_config_dword(%struct.pci_dev* %66, i32 %68, i32 %69)
  br label %77

71:                                               ; preds = %49
  %72 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 12
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pci_write_config_dword(%struct.pci_dev* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %54
  ret void
}

declare dso_local i32 @sc1200_clock(...) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
