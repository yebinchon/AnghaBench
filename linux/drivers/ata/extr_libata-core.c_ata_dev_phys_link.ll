; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_phys_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_phys_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.ata_link*, %struct.ata_link }
%struct.ata_device = type { i32, %struct.ata_link* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 1
  %7 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  %13 = icmp ne %struct.ata_link* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 1
  %17 = load %struct.ata_link*, %struct.ata_link** %16, align 8
  store %struct.ata_link* %17, %struct.ata_link** %2, align 8
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  store %struct.ata_link* %25, %struct.ata_link** %2, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load %struct.ata_link*, %struct.ata_link** %28, align 8
  store %struct.ata_link* %29, %struct.ata_link** %2, align 8
  br label %30

30:                                               ; preds = %26, %23, %14
  %31 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  ret %struct.ata_link* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
