; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_pio_mask_no_iordy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_pio_mask_no_iordy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32* }

@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8
@ATA_SHIFT_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_pio_mask_no_iordy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pio_mask_no_iordy(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 240
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ATA_SHIFT_PIO, align 4
  %27 = shl i32 3, %26
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @ATA_SHIFT_PIO, align 4
  %30 = shl i32 7, %29
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* @ATA_SHIFT_PIO, align 4
  %34 = shl i32 3, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %28, %25
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
