; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64 }
%struct.cdrom_changer_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CD_CHANGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"entering cdrom_slot_status()\0A\00", align 1
@CDS_NO_INFO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CDS_DISC_OK = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_slot_status(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_changer_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CD_CHANGER, align 4
  %9 = call i32 @cd_dbg(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CDS_NO_INFO, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cdrom_changer_info* @kmalloc(i32 8, i32 %17)
  store %struct.cdrom_changer_info* %18, %struct.cdrom_changer_info** %6, align 8
  %19 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %20 = icmp ne %struct.cdrom_changer_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %26 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %27 = call i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %25, %struct.cdrom_changer_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %32 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %41, i32* %7, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %47 = call i32 @kfree(%struct.cdrom_changer_info* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %21, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cd_dbg(i32, i8*) #1

declare dso_local %struct.cdrom_changer_info* @kmalloc(i32, i32) #1

declare dso_local i32 @cdrom_read_mech_status(%struct.cdrom_device_info*, %struct.cdrom_changer_info*) #1

declare dso_local i32 @kfree(%struct.cdrom_changer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
