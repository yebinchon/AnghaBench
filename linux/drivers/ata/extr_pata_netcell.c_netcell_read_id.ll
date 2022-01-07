; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_netcell.c_netcell_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_netcell.c_netcell_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32 }

@ATA_ID_CSF_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, %struct.ata_taskfile*, i32*)* @netcell_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcell_read_id(%struct.ata_device* %0, %struct.ata_taskfile* %1, i32* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @ata_do_dev_read_id(%struct.ata_device* %8, %struct.ata_taskfile* %9, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* @ATA_ID_CSF_DEFAULT, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 16384
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @ata_do_dev_read_id(%struct.ata_device*, %struct.ata_taskfile*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
