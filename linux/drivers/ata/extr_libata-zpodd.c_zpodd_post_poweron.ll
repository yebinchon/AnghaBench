; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_post_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_post_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.zpodd* }
%struct.zpodd = type { i32, i32, i64, i32, i32 }

@ODD_MECH_TYPE_DRAWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpodd_post_poweron(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.zpodd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %4 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %5 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %4, i32 0, i32 1
  %6 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  store %struct.zpodd* %6, %struct.zpodd** %3, align 8
  %7 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %8 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %14 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %16 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %21 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %23 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ODD_MECH_TYPE_DRAWER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %29 = call i32 @eject_tray(%struct.ata_device* %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %33 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %32, i32 0, i32 3
  store i32 0, i32* %33, align 8
  %34 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %35 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %34, i32 0, i32 4
  store i32 0, i32* %35, align 4
  %36 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sdev_enable_disk_events(i32 %38)
  br label %40

40:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @eject_tray(%struct.ata_device*) #1

declare dso_local i32 @sdev_enable_disk_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
