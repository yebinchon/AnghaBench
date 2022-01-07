; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pata_acpi* }
%struct.pata_acpi = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.ata_timing = type { i32, i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pacpi_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pacpi_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pata_acpi*, align 8
  %7 = alloca %struct.ata_timing*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.pata_acpi*, %struct.pata_acpi** %12, align 8
  store %struct.pata_acpi* %13, %struct.pata_acpi** %6, align 8
  %14 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %15 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.ata_timing* @ata_timing_find_mode(i64 %24)
  store %struct.ata_timing* %25, %struct.ata_timing** %7, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XFER_UDMA_0, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %21
  %32 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %33 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %36 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 2, %43
  %45 = shl i32 1, %44
  %46 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %47 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 8
  br label %72

51:                                               ; preds = %21
  %52 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %53 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %56 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %54, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 2, %63
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %68 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %51, %31
  %73 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %74 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %75 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %74, i32 0, i32 0
  %76 = call i32 @ata_acpi_stm(%struct.ata_port* %73, %struct.TYPE_5__* %75)
  %77 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %78 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %79 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %78, i32 0, i32 0
  %80 = call i32 @ata_acpi_gtm(%struct.ata_port* %77, %struct.TYPE_5__* %79)
  ret void
}

declare dso_local %struct.ata_timing* @ata_timing_find_mode(i64) #1

declare dso_local i32 @ata_acpi_stm(%struct.ata_port*, %struct.TYPE_5__*) #1

declare dso_local i32 @ata_acpi_gtm(%struct.ata_port*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
