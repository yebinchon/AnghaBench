; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_ht6560b_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_ht6560b_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ata_device = type { i64, i32 }
%struct.ata_timing = type { i32, i32 }

@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ht6560b_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht6560b_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_timing, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ata_timing_compute(%struct.ata_device* %9, i32 %12, %struct.ata_timing* %7, i32 20000, i32 1000)
  %14 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clamp_val(i32 %15, i32 2, i32 15)
  store i32 %16, i32* %5, align 4
  %17 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clamp_val(i32 %18, i32 2, i32 16)
  %20 = and i32 %19, 15
  store i32 %20, i32* %6, align 4
  %21 = call i32 @inb(i32 998)
  %22 = call i32 @inb(i32 998)
  %23 = call i32 @inb(i32 998)
  %24 = call i32 @inb(i32 998)
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iowrite8(i32 %28, i32 %32)
  %34 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATA_DEV_ATA, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = call i32 @inb(i32 998)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 36
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, -37
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @outb(i32 %47, i32 998)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ioread8(i32 %54)
  ret void
}

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
