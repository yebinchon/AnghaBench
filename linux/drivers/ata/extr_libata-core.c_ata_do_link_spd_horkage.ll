; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_do_link_spd_horkage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_do_link_spd_horkage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_link = type { i32, i32 }

@ATA_HORKAGE_1_5_GBPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"applying link speed limit horkage to %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_do_link_spd_horkage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_do_link_spd_horkage(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %8 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %7)
  store %struct.ata_link* %8, %struct.ata_link** %4, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %10 = call i32 @sata_scr_valid(%struct.ata_link* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_HORKAGE_1_5_GBPS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %49

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %27 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %49

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %35 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %37 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sata_spd_string(i32 %43)
  %45 = call i32 @ata_dev_info(%struct.ata_device* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %31, %21, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i32 @sata_scr_valid(%struct.ata_link*) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i32) #1

declare dso_local i32 @sata_spd_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
