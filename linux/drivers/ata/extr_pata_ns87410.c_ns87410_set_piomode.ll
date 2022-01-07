; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ns87410.c_ns87410_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ns87410.c_ns87410_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i64, i64, i64 }

@ns87410_set_piomode.activebits = internal constant [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7], align 16
@ns87410_set_piomode.recoverbits = internal constant [12 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7], align 16
@.str = private unnamed_addr constant [17 x i8] c"unknown mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ns87410_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns87410_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_timing, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 4, %18
  %20 = add nsw i32 64, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 3
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %21, i32 %23, i32* %8)
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = call i64 @ata_pio_need_iordy(%struct.ata_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, -5
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ata_timing_compute(%struct.ata_device* %35, i32 %38, %struct.ata_timing* %9, i32 30303, i32 1)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %96

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @clamp_val(i64 %50, i32 2, i32 16)
  %52 = getelementptr i8, i8* %51, i64 -2
  %53 = ptrtoint i8* %52 to i64
  %54 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @clamp_val(i64 %56, i32 1, i32 4)
  %58 = getelementptr i8, i8* %57, i64 -1
  %59 = ptrtoint i8* %58 to i64
  %60 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @clamp_val(i64 %62, i32 1, i32 12)
  %64 = getelementptr i8, i8* %63, i64 -1
  %65 = ptrtoint i8* %64 to i64
  %66 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 2
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %68, 6
  %70 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [12 x i32], [12 x i32]* @ns87410_set_piomode.recoverbits, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = or i64 %69, %75
  %77 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [15 x i32], [15 x i32]* @ns87410_set_piomode.activebits, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = or i64 %76, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @pci_write_config_byte(%struct.pci_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 3
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 %90, i32 %91)
  %93 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %94 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %95 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %94, i32 0, i32 1
  store %struct.ata_device* %93, %struct.ata_device** %95, align 8
  br label %96

96:                                               ; preds = %48, %41
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i64 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
