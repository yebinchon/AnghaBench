; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_map_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_map_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@ATA_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_PROT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_scsi_map_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_map_proto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 30
  %6 = ashr i32 %5, 1
  switch i32 %6, label %16 [
    i32 3, label %7
    i32 6, label %9
    i32 10, label %9
    i32 11, label %9
    i32 4, label %11
    i32 5, label %11
    i32 12, label %13
    i32 0, label %15
    i32 1, label %15
    i32 8, label %15
    i32 9, label %15
    i32 7, label %15
    i32 15, label %15
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @ATA_PROT_NODATA, align 4
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %1, %1, %1
  %10 = load i32, i32* @ATA_PROT_DMA, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @ATA_PROT_PIO, align 4
  store i32 %12, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @ATA_PROT_NCQ, align 4
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %16

16:                                               ; preds = %1, %15
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @ATA_PROT_UNKNOWN, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %13, %11, %9, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
