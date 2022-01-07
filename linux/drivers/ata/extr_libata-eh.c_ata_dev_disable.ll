; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_dev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@ATA_DNXFER_FORCE_PIO0 = common dso_local global i32 0, align 4
@ATA_DNXFER_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dev_disable(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %3 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %4 = call i32 @ata_dev_enabled(%struct.ata_device* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ata_msg_drv(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %17 = call i32 @ata_dev_warn(%struct.ata_device* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %20 = call i32 @ata_acpi_on_disable(%struct.ata_device* %19)
  %21 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %22 = load i32, i32* @ATA_DNXFER_FORCE_PIO0, align 4
  %23 = load i32, i32* @ATA_DNXFER_QUIET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @ata_down_xfermask_limit(%struct.ata_device* %21, i32 %24)
  %26 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 0
  %32 = call i32 @ata_ering_clear(i32* %31)
  br label %33

33:                                               ; preds = %18, %6
  ret void
}

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_msg_drv(i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_acpi_on_disable(%struct.ata_device*) #1

declare dso_local i32 @ata_down_xfermask_limit(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_ering_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
