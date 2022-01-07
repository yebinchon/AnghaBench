; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32 }

@ATA_ID_FEATURE_SUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, %struct.ata_taskfile*, i32*)* @xgene_ahci_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_read_id(%struct.ata_device* %0, %struct.ata_taskfile* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @ata_do_dev_read_id(%struct.ata_device* %9, %struct.ata_taskfile* %10, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = call i32 @cpu_to_le16(i32 -257)
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* @ATA_ID_FEATURE_SUPP, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @ata_do_dev_read_id(%struct.ata_device*, %struct.ata_taskfile*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
