; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_standby_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_standby_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MTIP_PF_REBUILD_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_REBUILD_FAILED_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_SEC_LOCK_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"STANDBY IMMEDIATE failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_standby_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_standby_drive(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %9
  %18 = load i32, i32* @MTIP_PF_REBUILD_BIT, align 4
  %19 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %18, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @MTIP_DDF_REBUILD_FAILED_BIT, align 4
  %27 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 2
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @MTIP_DDF_SEC_LOCK_BIT, align 4
  %33 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 2
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @mtip_standby_immediate(%struct.TYPE_4__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %31, %25, %17
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mtip_standby_immediate(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
