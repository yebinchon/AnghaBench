; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_crwlpciegen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_crwlpciegen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pcie2 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_CORE_PCIE2_CLK_CONTROL = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2_CONFIGINDADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2_CONFIGINDDATA = common dso_local global i32 0, align 4
@COE_PVT_TL_CTRL_0_PM_DIS_L1_REENTRY_BIT = common dso_local global i32 0, align 4
@PCIEGEN2_COE_PVT_TL_CTRL_0 = common dso_local global i32 0, align 4
@PCIE_DISABLE_L1CLK_GATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pcie2*)* @pciedev_crwlpciegen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pciedev_crwlpciegen2(%struct.bcma_drv_pcie2* %0) #0 {
  %2 = alloca %struct.bcma_drv_pcie2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_drv_pcie2* %0, %struct.bcma_drv_pcie2** %2, align 8
  %6 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 11
  br label %20

20:                                               ; preds = %17, %14, %1
  %21 = phi i1 [ true, %14 ], [ true, %1 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 11
  br label %37

37:                                               ; preds = %34, %31, %28, %25, %20
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %20 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %42, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
