; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_bcm5357b0_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_bcm5357b0_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@BCMA_CHIP_ID_BCM5357 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM4749 = common dso_local global i64 0, align 8
@BCMA_CORE_USB20_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @bcma_core_mips_bcm5357b0_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_core_mips_bcm5357b0_quirk(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %3 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %4 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BCMA_CHIP_ID_BCM5357, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %13 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BCMA_CHIP_ID_BCM4749, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %11, %1
  %21 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %22 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %30 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BCMA_CORE_USB20_HOST, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %28, %20, %11
  %36 = phi i1 [ false, %20 ], [ false, %11 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
