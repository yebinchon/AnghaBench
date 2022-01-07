; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@cs5536_set_piomode.drv_timings = internal constant [5 x i32] [i32 152, i32 85, i32 50, i32 33, i32 32], align 16
@cs5536_set_piomode.addr_timings = internal constant [5 x i32] [i32 2, i32 1, i32 0, i32 0, i32 0], align 16
@cs5536_set_piomode.cmd_timings = internal constant [5 x i32] [i32 153, i32 146, i32 144, i32 34, i32 32], align 16
@XFER_PIO_0 = common dso_local global i32 0, align 4
@IDE_CAST_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_CAST_D0_SHIFT = common dso_local global i32 0, align 4
@CAST = common dso_local global i32 0, align 4
@IDE_CAST_DRV_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @cs5536_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %17)
  store %struct.ata_device* %18, %struct.ata_device** %6, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @XFER_PIO_0, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IDE_CAST_D1_SHIFT, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IDE_CAST_D0_SHIFT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %36 = icmp ne %struct.ata_device* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XFER_PIO_0, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @min(i32 %38, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.drv_timings, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cs5536_program_dtc(%struct.ata_device* %46, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* @CAST, align 4
  %54 = call i32 @cs5536_read(%struct.pci_dev* %52, i32 %53, i32* %10)
  %55 = load i32, i32* @IDE_CAST_DRV_MASK, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.addr_timings, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @IDE_CAST_CMD_MASK, align 4
  %70 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.cmd_timings, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = load i32, i32* @CAST, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @cs5536_write(%struct.pci_dev* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cs5536_program_dtc(%struct.ata_device*, i32) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
