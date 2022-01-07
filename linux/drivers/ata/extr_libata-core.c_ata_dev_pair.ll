; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.ata_link* }
%struct.ata_link = type { %struct.ata_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca %struct.ata_device*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 1
  %8 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  store %struct.ata_link* %8, %struct.ata_link** %4, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %10 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %9, i32 0, i32 0
  %11 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i64 %16
  store %struct.ata_device* %17, %struct.ata_device** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %19 = call i32 @ata_dev_enabled(%struct.ata_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store %struct.ata_device* null, %struct.ata_device** %2, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  store %struct.ata_device* %23, %struct.ata_device** %2, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  ret %struct.ata_device* %25
}

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
